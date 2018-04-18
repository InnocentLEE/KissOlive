package kissolive.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kissolive.brand.domain.Brand;
import kissolive.brand.domain.BrandAndSeries;
import kissolive.brand.service.BrandService;
import kissolive.colorno.domain.Colorno;
import kissolive.colorno.service.ColornoService;
import kissolive.goods.service.GoodsService;
import kissolive.hotspot.domain.Hotspot;
import kissolive.hotspot.service.HotspotService;
import kissolive.lipstick.service.LipstickService;
import kissolive.series.domain.Series;
import kissolive.series.service.SeriesService;
import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

public class AdminServlet extends BaseServlet {
	
	ColornoService colornoService = new ColornoService();
	BrandService brandService = new BrandService();
	HotspotService hotspotService = new HotspotService();
	SeriesService seriesService = new SeriesService();
	LipstickService lipstickService = new LipstickService();
	GoodsService goodsService = new GoodsService();
	/**
	 * 首页管理
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String adminHomePage(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		return "f:/";
	}
	/**
	 * 选购热点管理
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String adminHotspot(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Hotspot> hotspotList = hotspotService.find();
		req.setAttribute("hotspotList", hotspotList);
		return "f:/page/admin/admin_hot.jsp";
	}
	/**
	 * 色号管理
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String adminColorno(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Colorno> colornoList = colornoService.find();
		req.setAttribute("colornoList", colornoList);
		return "f:/page/admin/admin_color.jsp";
	}
	/**
	 * 品牌管理
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String adminBrand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Brand> brandList = brandService.find();
		for(int i=0;i<brandList.size();i++){
			String bsrc = brandList.get(i).getBsrc();
			bsrc = bsrc.replaceAll("/images/", "images//");
			brandList.get(i).setBsrc(bsrc);
		}
		req.setAttribute("brandList", brandList);
		return "f:/page/admin/admin_brand.jsp";
	}
	/**
	 * 系列管理
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String adminSeries(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Brand> brandList = brandService.find();
		List<BrandAndSeries> brandAndSeriesList = new ArrayList<BrandAndSeries>();
		for(int i=0;i<brandList.size();i++){
			Brand brand = brandList.get(i);
			brand.setBsrc(brand.getBsrc().substring(1));
			List<Series> seriesList = seriesService.findByBid(brand.getBid());
			for(int j=0;j<seriesList.size();j++){
				seriesList.get(j).setSsrc(seriesList.get(j).getSsrc().substring(1));
			}
			brandAndSeriesList.add(new BrandAndSeries(brand, seriesList));
		}
		req.setAttribute("brandAndSeriesList", brandAndSeriesList);
		return "f:/page/admin/admin_series.jsp";
	}
	/**
	 * 口红管理
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String adminLipstick(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		return "f:/";
	}
	/**
	 * 商品管理
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String adminGoods(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		return "f:/";
	}
	/**
	 * 订单管理
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String adminOrder(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		return "f:/";
	}
	/**
	 * 添加色号
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String addColor(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String cncode = req.getParameter("cncode");
		String cnRGB = req.getParameter("cnRGB");
		if((cncode==null||cncode.equals(""))||(cncode==null||cncode.equals(""))){
			req.setAttribute("message", "添加失败！色号代码和颜色代号不可以为空");
			req.setAttribute("href", "/admin/AdminServlet?method=adminColorno");
			return "f:/page/admin/message.jsp";
		}
		Colorno colorno = new Colorno(CommonUtils.uuid(), cncode, cnRGB);
		colornoService.addColor(colorno);
		req.setAttribute("message", "添加成功");
		req.setAttribute("href", "/admin/AdminServlet?method=adminColorno");
		return "f:/page/admin/message.jsp";
	}
	/**
	 * 添加选购热点
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String addHotspot(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String hdescribe = req.getParameter("hdescribe");
		if(hdescribe==null||hdescribe.equals("")){
			req.setAttribute("message", "添加失败！选购热点描述不可以为空");
			req.setAttribute("href", "/admin/AdminServlet?method=adminHotspot");
			return "f:/page/admin/message.jsp";
		}
		Hotspot hotspot = new Hotspot(CommonUtils.uuid(), hdescribe);
		hotspotService.add(hotspot);
		req.setAttribute("message", "添加成功");
		req.setAttribute("href", "/admin/AdminServlet?method=adminHotspot");
		return "f:/page/admin/message.jsp";
	}
	/**
	 * 添加系列先发送品牌信息
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String addSeriespre(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Brand> brandList = brandService.find();
		req.setAttribute("brandList", brandList);
		return "f:/page/admin/admin_addseries.jsp";
	}
	/**
	 * 删除品牌
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String deleteBrand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String bid = req.getParameter("bid");
		if(seriesService.findByBid(bid).size()>0){
			req.setAttribute("message", "删除失败！该品牌下有系列");
			req.setAttribute("href", "/admin/AdminServlet?method=adminBrand");
			return "f:/page/admin/message.jsp";
		}else{
			brandService.deteleByBid(bid);
			return adminBrand(req, resp);
		}
	}
	/**
	 * 删除系列
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String deleteSeries(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String sid = req.getParameter("sid");
		if(lipstickService.findBySid(sid).size()>0){
			req.setAttribute("message", "删除失败！该系列下有口红产品");
			req.setAttribute("href", "/admin/AdminServlet?method=adminSeries");
			return "f:/page/admin/message.jsp";
		}else{
			seriesService.delete(sid);
			return adminSeries(req, resp);
		}
	}
	/**
	 * 删除色号
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String deleteColorno(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String cnid = req.getParameter("cnid");
		if(goodsService.findByCnid(cnid).size()>0){
			req.setAttribute("message", "删除失败！该色号正在使用中");
			req.setAttribute("href", "/admin/AdminServlet?method=adminColorno");
			return "f:/page/admin/message.jsp";
		}else{
			colornoService.delete(cnid);
			return adminColorno(req, resp);
		}
	}
	public String deleteHotspot(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String hid = req.getParameter("hid");
		if(lipstickService.findByHid(hid).size()>0){
			req.setAttribute("message", "删除失败！该选购热点正在使用中");
			req.setAttribute("href", "/admin/AdminServlet?method=adminHotspot");
			return "f:/page/admin/message.jsp";
		}else{
			hotspotService.delete(hid);
			return adminHotspot(req, resp);
		}
	}
}
