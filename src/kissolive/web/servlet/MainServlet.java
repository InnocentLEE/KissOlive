package kissolive.web.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kissolive.brand.domain.Brand;
import kissolive.brand.service.BrandService;
import kissolive.goods.domain.Goods;
import kissolive.goods.service.GoodsService;
import kissolive.hotspot.service.HotspotService;
import kissolive.lipstick.domain.Lipstick;
import kissolive.lipstick.domain.LipstickAvgPrice;
import kissolive.lipstick.service.LipstickService;
import kissolive.lipstickpicture.service.LipstickPictureService;
import kissolive.series.domain.Series;
import kissolive.series.domain.SeriesCount;
import kissolive.series.service.SeriesService;
import cn.itcast.servlet.BaseServlet;

public class MainServlet extends BaseServlet {
	
	private SeriesService seriesService = new SeriesService();
	private LipstickService lipstickService = new LipstickService();
	private GoodsService goodsService = new GoodsService();
	private HotspotService hotspotService = new HotspotService();
	private LipstickPictureService lipstickPictureService = new LipstickPictureService();
	private BrandService brandService = new BrandService();
	
	/**
	 * 根据品牌查找信息发送到品牌查询商品的页面
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String searchByBrand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException {
		String bid = req.getParameter("bid");
		String bname = req.getParameter("bname");
		List<Series> seriesList = seriesService.findByBid(bid);
		List<SeriesCount> seriescountList = new ArrayList<SeriesCount>();
		for(int i=0;i<seriesList.size();i++){
			SeriesCount seriescount = new SeriesCount(seriesList.get(i), lipstickService.countBySid(seriesList.get(i).getSid()));
			seriescountList.add(seriescount);
		}
		
		
		List<Lipstick> lipstickList = new ArrayList<Lipstick>();
		int productionCount = 0;
		for(int i=0;i<seriescountList.size();i++){
			productionCount = productionCount + seriescountList.get(i).getCount();
			List<Lipstick> list = lipstickService.findBySid(seriescountList.get(i).getSeries().getSid());
			for(int j=0;j<list.size();j++){
				lipstickList.add(list.get(j));
			}
		}
		
		
		List<LipstickAvgPrice> lipstickAvgPriceList = new ArrayList<LipstickAvgPrice>();
		for(int i=0;i<lipstickList.size();i++){
			List<Goods> goodsList = goodsService.findByLid(lipstickList.get(i).getLid());
			double avgprice = 0;
			for(int j=0;j<goodsList.size();j++){
				avgprice = avgprice + goodsList.get(j).getGprice();
			}
			avgprice = avgprice / goodsList.size();
			BigDecimal b = new BigDecimal(avgprice);    
			avgprice = b.setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();  
			String hotspot = hotspotService.findByHid(lipstickList.get(i).getHid()).getHdescribe();
			String lsrc = lipstickPictureService.findMainPictureByLid(lipstickList.get(i).getLid()).getLpsrc();
			LipstickAvgPrice lipstickAvgPrice = new LipstickAvgPrice(lipstickList.get(i), avgprice, hotspot, lsrc);
			lipstickAvgPriceList.add(lipstickAvgPrice);
		}
		req.setAttribute("bid", bid);
		req.setAttribute("bname", bname);
		req.setAttribute("seriescountList", seriescountList);
		req.setAttribute("lipstickAvgPriceList", lipstickAvgPriceList);
		req.setAttribute("lipstickCount", productionCount);
		List<Brand> brandList = brandService.find();
		req.setAttribute("brandList", brandList);
		return "f:/page/user/user_searchByBrand.jsp";
	}
	/**
	 * 根据系列查找信息发送到系列查询商品的页面
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String searchBySeries(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException {
		String sid = req.getParameter("sid");
		String bid = req.getParameter("bid");
		String bname = req.getParameter("bname");
		List<Series> seriesList = seriesService.findByBid(bid);
		List<SeriesCount> seriescountList = new ArrayList<SeriesCount>();
		for(int i=0;i<seriesList.size();i++){
			SeriesCount seriescount = new SeriesCount(seriesList.get(i), lipstickService.countBySid(seriesList.get(i).getSid()));
			seriescountList.add(seriescount);
		}
		
		List<Lipstick> lipstickList = lipstickService.findBySid(sid);
		List<LipstickAvgPrice> lipstickAvgPriceList = new ArrayList<LipstickAvgPrice>();
		for(int i=0;i<lipstickList.size();i++){
			List<Goods> goodsList = goodsService.findByLid(lipstickList.get(i).getLid());
			double avgprice = 0;
			for(int j=0;j<goodsList.size();j++){
				avgprice = avgprice + goodsList.get(j).getGprice();
			}
			avgprice = avgprice / goodsList.size();
			BigDecimal b = new BigDecimal(avgprice);    
			avgprice = b.setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();  
			String hotspot = hotspotService.findByHid(lipstickList.get(i).getHid()).getHdescribe();
			String lsrc = lipstickPictureService.findMainPictureByLid(lipstickList.get(i).getLid()).getLpsrc();
			LipstickAvgPrice lipstickAvgPrice = new LipstickAvgPrice(lipstickList.get(i), avgprice, hotspot, lsrc);
			lipstickAvgPriceList.add(lipstickAvgPrice);
		}
		req.setAttribute("bid", bid);
		req.setAttribute("bname", bname);
		req.setAttribute("seriescountList", seriescountList);
		List<Brand> brandList = brandService.find();
		req.setAttribute("brandList", brandList);
		req.setAttribute("lipstickAvgPriceList", lipstickAvgPriceList);
		req.setAttribute("lipstickCount", lipstickList.size());
		return "f:/page/user/user_searchBySeries.jsp";
	}
	/**
	 * 根据关键字搜索
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String search(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException {
		List<Lipstick> lipstickList = lipstickService.find();
		List<LipstickAvgPrice> lipstickAvgPriceList = new ArrayList<LipstickAvgPrice>();
		for(int i=0;i<lipstickList.size();i++){
			List<Goods> goodsList = goodsService.findByLid(lipstickList.get(i).getLid());
			double avgprice = 0;
			for(int j=0;j<goodsList.size();j++){
				avgprice = avgprice + goodsList.get(j).getGprice();
			}
			avgprice = avgprice / goodsList.size();
			BigDecimal b = new BigDecimal(avgprice);    
			avgprice = b.setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();  
			String hotspot = hotspotService.findByHid(lipstickList.get(i).getHid()).getHdescribe();
			String lsrc = lipstickPictureService.findMainPictureByLid(lipstickList.get(i).getLid()).getLpsrc();
			LipstickAvgPrice lipstickAvgPrice = new LipstickAvgPrice(lipstickList.get(i), avgprice, hotspot, lsrc);
			lipstickAvgPriceList.add(lipstickAvgPrice);
		}
		List<LipstickAvgPrice> resultlipstickAvgPriceList = new ArrayList<LipstickAvgPrice>();
		String search = req.getParameter("search");
		if(search!=null){
			for(int i=0;i<lipstickAvgPriceList.size();i++){
				LipstickAvgPrice lipstickAvgPrice = lipstickAvgPriceList.get(i);
				String hotspot = lipstickAvgPrice.getHotspot();
				String lname = lipstickAvgPrice.getLipstick().getLname();
				if((hotspot.indexOf(search)>=0)||(lname.indexOf(search)>=0)){
					resultlipstickAvgPriceList.add(lipstickAvgPrice);
				}
			}

		}
		req.setAttribute("resultlipstickAvgPriceList", resultlipstickAvgPriceList);
		req.setAttribute("resultlipstickCount", resultlipstickAvgPriceList.size());
		List<Brand> brandList = brandService.find();
		req.setAttribute("brandList", brandList);
		return "f:/page/user/user_search.jsp";
	}
}
