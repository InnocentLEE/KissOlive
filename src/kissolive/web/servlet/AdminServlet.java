package kissolive.web.servlet;

import java.io.IOException;
import java.math.BigDecimal;
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
import kissolive.goods.domain.Goods;
import kissolive.goods.service.GoodsService;
import kissolive.hotspot.domain.Hotspot;
import kissolive.hotspot.service.HotspotService;
import kissolive.lipstick.domain.Lipstick;
import kissolive.lipstick.domain.LipstickAndPicture;
import kissolive.lipstick.service.LipstickService;
import kissolive.lipstickpicture.service.LipstickPictureService;
import kissolive.recommend.service.RecommendService;
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
	LipstickPictureService lipstickPictureService = new LipstickPictureService();
	RecommendService recommendService = new RecommendService();
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
		List<Lipstick> lipstickList = lipstickService.find();
		List<LipstickAndPicture> lipstickAndPicturelist = new ArrayList<LipstickAndPicture>();
		for(int i=0;i<lipstickList.size();i++){
			String detailsrc = lipstickPictureService.findPictureByLid(lipstickList.get(i).getLid()).getLpsrc();
			String mainsrc = lipstickPictureService.findMainPictureByLid(lipstickList.get(i).getLid()).getLpsrc();
			lipstickAndPicturelist.add(new LipstickAndPicture(lipstickList.get(i), mainsrc, detailsrc));
		}
		req.setAttribute("lipstickAndPicturelist", lipstickAndPicturelist);
		return "f:/page/admin/admin_lipstick.jsp";
	
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
		}else if(recommendService.findByBid(bid).size()>0){
			req.setAttribute("message", "删除失败！该品牌被推荐到首页展示，不可删除");
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
		}else if(recommendService.findBySid(sid).size()>0){
			req.setAttribute("message", "删除失败！该系列被推荐到首页展示，不可删除");
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
	/**
	 * 删除选购热点
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
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
	/**
	 * 删除口红
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String deleteLipstick(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String lid = req.getParameter("lid");
		if(goodsService.findByLid(lid).size()>0){
			req.setAttribute("message", "删除失败！该口红产品已经上线交易了");
			req.setAttribute("href", "/admin/AdminServlet?method=adminLipstick");
			return "f:/page/admin/message.jsp";
		}else if(recommendService.findByLid(lid).size()>0){
			req.setAttribute("message", "删除失败！该产品被推荐到首页展示，不可删除");
			req.setAttribute("href", "/admin/AdminServlet?method=adminLipstick");
			return "f:/page/admin/message.jsp";
		}else{
			lipstickPictureService.deleteByLid(lid);
			lipstickService.delete(lid);
			return adminLipstick(req, resp);
		}
	}
	/**
	 * 添加口红先行步骤
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String addLipstickpre(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
    	List<Brand> brandList = brandService.find();
    	req.setAttribute("brandList", brandList);
    	List<Hotspot> hotspotList = hotspotService.find();
    	req.setAttribute("hotspotList", hotspotList);
    	return "f:/page/admin/admin_addlipstick.jsp";
	
	}
    public String ajaxFindSeries(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String bid = req.getParameter("bid");
		List<Series> seriesList = seriesService.findByBid(bid);
		String json = toJson(seriesList);
		System.out.println(json);
		resp.getWriter().print(json);
		return null;
	}
	/**
	 * 把一个系列转化为json格式的数据
	 * @param series
	 * @return
	 */
	private String toJson(Series series) {
		StringBuilder sb = new StringBuilder("{");
		sb.append("\"sid\"").append(":").append("\"").append(series.getSid()).append("\"");
		sb.append(",");
		sb.append("\"bid\"").append(":").append("\"").append(series.getBid()).append("\"");
		sb.append(",");
		sb.append("\"sname\"").append(":").append("\"").append(series.getSname()).append("\"");
		sb.append(",");
		sb.append("\"ssrc\"").append(":").append("\"").append(series.getSsrc()).append("\"");
		sb.append("}");
		return sb.toString();
	}
	/**
	 * 将系列集合转化为json格式的数据
	 * @param seriesList
	 * @return
	 */
	private String toJson(List<Series> seriesList) {
		StringBuilder sb = new StringBuilder("[");
		for(int i = 0; i < seriesList.size(); i++) {
			sb.append(toJson(seriesList.get(i)));
			if(i < seriesList.size() - 1) {
				sb.append(",");
			}
		}
		sb.append("]");
		return sb.toString();
	}
	/**
	 * 查看口红的详情
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String deatilLipstick(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
    	String lid = req.getParameter("lid");
    	Lipstick lipstick = lipstickService.findByLid(lid);
    	String sid = lipstick.getSid();
    	Series series = seriesService.findBySid(sid);
    	Brand brand  = brandService.findByBid1(series.getBid());
    	Hotspot hotspot = hotspotService.findByHid(lipstick.getHid());
    	String mainsrc = lipstickPictureService.findMainPictureByLid(lid).getLpsrc();
    	String detailsrc = lipstickPictureService.findPictureByLid(lid).getLpsrc();
    	
    	LipstickAndPicture lipstickAndPicture = new LipstickAndPicture(lipstick, mainsrc, detailsrc);	
		req.setAttribute("lipstickAndPicture", lipstickAndPicture);
		req.setAttribute("brand", brand);
		req.setAttribute("series", series);
		req.setAttribute("hotspot", hotspot);
		return "f:/page/admin/admin_lipstickdetails.jsp";
	}
	/**
	 * 添加商品先行步骤
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String addGoodspre(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
    	List<Lipstick> lipstickList = lipstickService.find();
    	List<Colorno> colornoList = colornoService.find();
    	req.setAttribute("lipstickList", lipstickList);
    	req.setAttribute("colornoList", colornoList);
    	return "f:/page/admin/admin_addgoods.jsp";
	
	}
	/**
	 * 判断能否传化为整数
	 * @param s
	 * @return
	 */
	public boolean canToInteger(String s){
		try {  
		    Integer.parseInt(s);  
		    return true;  
		} catch (NumberFormatException e) {  
		    return false;  
		}  
	}
	/**
	 * 判断能否转化为小数
	 * @param s
	 * @return
	 */
	public boolean canToDouble(String s){
		try {  
		    Double.parseDouble(s);
		    return true;  
		} catch (Exception e) {  
		    return false;  
		}  
	}
	/**
	 * 添加商品
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String addGoods(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
    	String lid = req.getParameter("lid");
    	String cnid = req.getParameter("cnid");
    	String Sgprice = req.getParameter("gprice");
    	String Sgnumber = req.getParameter("gnumber");
    	String Sstatus = req.getParameter("status");
    	if(lid==null||lid.equals("")||cnid==null||cnid.equals("")||Sstatus==null||Sstatus.equals("")||Sgprice==null||Sgprice.equals("")||Sgnumber==null||Sgnumber.equals("")||!(canToInteger(Sgnumber))||!(canToDouble(Sgprice))){
    		req.setAttribute("message", "添加失败！所属口红、色号、库存量、价格和状态都不可为空，库存量为整数，价格为整数或者小数");
			req.setAttribute("href", "/admin/AdminServlet?method=addGoodspre");
			return "f:/page/admin/message.jsp";
    	}else if(goodsService.findByLidAndCnid(lid, cnid).size()>0){
    		req.setAttribute("message", "添加失败！该口红已经存在这个色号了，您只需要去修改就行了");
			req.setAttribute("href", "/admin/AdminServlet?method=adminGood");
			return "f:/page/admin/message.jsp";
    	}else{
    		int gnumber = Integer.parseInt(Sgnumber);
    		int status = Integer.parseInt(Sstatus);
    		double gprice = Double.parseDouble(Sgprice);
    		BigDecimal b = new BigDecimal(gprice);    
    		gprice = b.setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
    		Goods goods = new Goods(CommonUtils.uuid(), lid, cnid, gprice, gnumber, status);
    		goodsService.add(goods);
    		req.setAttribute("message", "添加成功！");
			req.setAttribute("href", "/admin/AdminServlet?method=adminGoods");
			return "f:/page/admin/message.jsp";
    	}	
	}
}
