package kissolive.web.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kissolive.address.domain.Address;
import kissolive.address.service.AddressService;
import kissolive.brand.domain.Brand;
import kissolive.brand.service.BrandService;
import kissolive.cart.domain.Cart;
import kissolive.cart.domain.CartItem;
import kissolive.cart.service.CartService;
import kissolive.colorno.domain.Colorno;
import kissolive.colorno.service.ColornoService;
import kissolive.goods.domain.Goods;
import kissolive.goods.domain.GoodsAndColorno;
import kissolive.goods.service.GoodsService;
import kissolive.hotspot.domain.Hotspot;
import kissolive.hotspot.service.HotspotService;
import kissolive.lipstick.domain.Lipstick;
import kissolive.lipstick.domain.LipstickAndPicturesAndGoodsAndColorno;
import kissolive.lipstick.domain.LipstickAvgPrice;
import kissolive.lipstick.service.LipstickService;
import kissolive.lipstickpicture.domain.LipstickPicture;
import kissolive.lipstickpicture.service.LipstickPictureService;
import kissolive.order.domain.Order;
import kissolive.order.domain.OrderListItem;
import kissolive.order.service.OrderService;
import kissolive.orderitem.domain.OrderItem;
import kissolive.orderitem.domain.ViewOrderItem;
import kissolive.orderitem.service.OrderItemService;
import kissolive.series.domain.Series;
import kissolive.series.domain.SeriesCount;
import kissolive.series.service.SeriesService;
import kissolive.user.domain.User;
import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

public class MainServlet extends BaseServlet {
	
	private SeriesService seriesService = new SeriesService();
	private LipstickService lipstickService = new LipstickService();
	private GoodsService goodsService = new GoodsService();
	private HotspotService hotspotService = new HotspotService();
	private LipstickPictureService lipstickPictureService = new LipstickPictureService();
	private BrandService brandService = new BrandService();
	private ColornoService colornoService = new ColornoService();
	private CartService cartService = new CartService();
	private AddressService addressService = new AddressService();
	private OrderService orderService = new OrderService();
	private OrderItemService orderItemService = new OrderItemService();
	
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
			if(goodsList.size()>0){
				avgprice = avgprice / goodsList.size();
			}
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
			if(goodsList.size()>0){
				avgprice = avgprice / goodsList.size();
			}
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
			if(goodsList.size()>0){
				avgprice = avgprice / goodsList.size();
			}
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
	/**
	 * 查看口红详情
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String detailsLipstick(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException {
		String lid = req.getParameter("lid");
		Lipstick lipstick = lipstickService.findByLid(lid);
		List<Goods> goodsList = goodsService.findByLid1(lid);
		List<GoodsAndColorno> goodsAndColornoList = new ArrayList<GoodsAndColorno>();
		for(int i=0;i<goodsList.size();i++){
			Colorno colorno = colornoService.findByCnid(goodsList.get(i).getCnid());
			GoodsAndColorno goodsAndColorno = new GoodsAndColorno(goodsList.get(i), colorno);
			goodsAndColornoList.add(goodsAndColorno);
		}
		Hotspot hotspot = hotspotService.findByHid(lipstick.getHid());
		LipstickPicture mainPicture = lipstickPictureService.findMainPictureByLid(lid);
		LipstickPicture detailPicture = lipstickPictureService.findPictureByLid(lid);
		LipstickAndPicturesAndGoodsAndColorno lipstickAndPictureAndGoodsAndColorno = new LipstickAndPicturesAndGoodsAndColorno(lipstick, mainPicture, detailPicture, goodsAndColornoList);
		req.setAttribute("lipstickAndPictureAndGoodsAndColorno", lipstickAndPictureAndGoodsAndColorno);
		req.setAttribute("hotspot", hotspot);
		List<Brand> brandList = brandService.find();
		req.setAttribute("brandList", brandList);
		Series series = seriesService.findBySid(lipstick.getSid());
		Brand brand = brandService.findByBid1(series.getBid());
		req.setAttribute("Brand", brand);
		req.setAttribute("Series", series);
		return "f:/page/user/user_lipsintro.jsp";
	}
	/**
	 * 异步添加购物车
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String ajaxAddCart(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException,
			SQLException {

		String gid = req.getParameter("gid");
		String gnumber = req.getParameter("gnumber");
		User user = (User)req.getSession().getAttribute("sessionUser");
		if(user==null){
			resp.getWriter().print(false);
		}else{
			
			int number = Integer.parseInt(gnumber);
			String userid = user.getUserid();
			Cart cart = cartService.findByUseridAndGid(userid, gid);
			if(cart==null){
				Cart newcart = new Cart(CommonUtils.uuid(), userid, gid, number);
				cartService.add(newcart);
			}else{
				number += cart.getNumber();
				cart.setNumber(number);
				cartService.update(userid, cart.getCid(), number);
			}
			resp.getWriter().print(true);
		}
		return null;
	}
	/**
	 * 异步修改购物车数量
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String ajaxUpdateCart(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException,
			SQLException {

		String cid = req.getParameter("cid");
		String gnumber = req.getParameter("number");
		User user = (User)req.getSession().getAttribute("sessionUser");
		if(user==null){
			resp.getWriter().print(false);
		}else{
			
			int number = Integer.parseInt(gnumber);
			String userid = user.getUserid();
			Cart cart = cartService.findByCid(cid);
			cart.setNumber(number);
			cartService.update(userid, cart.getCid(), number);
			resp.getWriter().print(true);
		}
		return null;
	}
	/**
	 * 
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String deleteCart(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException,
			SQLException {

		String cid = req.getParameter("cid");
		User user = (User)req.getSession().getAttribute("sessionUser");
		String userid = user.getUserid();
		cartService.delete(userid, cid);
		List<Brand> brandList = brandService.find();
		req.setAttribute("brandList", brandList);
		return userCart(req,resp);
	}
	/**
	 * 查看购物车
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String userCart(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException,
			SQLException {
		User user = (User)req.getSession().getAttribute("sessionUser");
		String userid = user.getUserid();
		List<Cart> cartList = cartService.findByUserid(userid);
		List<CartItem> cartItemList = new ArrayList<CartItem>();
		for(int i=0;i<cartList.size();i++){
			String gid = cartList.get(i).getGid();
			Goods goods = goodsService.findByGid(gid);
			Lipstick lipstick = lipstickService.findByLid(goods.getLid());
			LipstickPicture lipstickPicture = lipstickPictureService.findMainPictureByLid(lipstick.getLid());
			Colorno colorno = colornoService.findByCnid(goods.getCnid());
			String mainsrc = lipstickPicture.getLpsrc();
			String lname = lipstick.getLname();
			String cncode = colorno.getCncode();
			double gprice = goods.getGprice();
			int number = cartList.get(i).getNumber();
			double totalprice = number * gprice;
			CartItem cartItem = new CartItem(cartList.get(i), mainsrc, lname, cncode, gprice, totalprice, number);
			cartItemList.add(cartItem);
		}
		req.setAttribute("cartItemList", cartItemList);
		req.setAttribute("size", cartItemList.size());
		List<Brand> brandList = brandService.find();
		req.setAttribute("brandList", brandList);
		return "f:/page/user/user_myshoppingcart.jsp";
	}
	/**
	 * 发送购物车项到确认订单页面
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String sentCartItem(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException,
			SQLException {
		User user = (User)req.getSession().getAttribute("sessionUser");
		
		try{
			String[] cids = req.getParameterValues("cart");
			List<Cart> cartList = new ArrayList<Cart>();
			
			for(int i=0;i<cids.length;i++){
				Cart cart = cartService.findByCid(cids[i]);
				cartList.add(cart);
			}
			List<CartItem> cartItemList = new ArrayList<CartItem>();
			int totalNumber = 0;
			double ttprice = 0;
			for(int i=0;i<cartList.size();i++){
				String gid = cartList.get(i).getGid();
				Goods goods = goodsService.findByGid(gid);
				Lipstick lipstick = lipstickService.findByLid(goods.getLid());
				LipstickPicture lipstickPicture = lipstickPictureService.findMainPictureByLid(lipstick.getLid());
				Colorno colorno = colornoService.findByCnid(goods.getCnid());
				String mainsrc = lipstickPicture.getLpsrc();
				String lname = lipstick.getLname();
				String cncode = colorno.getCncode();
				double gprice = goods.getGprice();
				int number = cartList.get(i).getNumber();
				totalNumber += number;
				double totalprice = number * gprice;
				ttprice += totalprice;
				CartItem cartItem = new CartItem(cartList.get(i), mainsrc, lname, cncode, gprice, totalprice, number);
				cartItemList.add(cartItem);
			}
			req.setAttribute("cartItemList", cartItemList);
			String userid = user.getUserid();
			List<Address> addressList = addressService.findByUser(userid);
			req.setAttribute("addressList", addressList);
			req.setAttribute("totalNumber", totalNumber);
			req.setAttribute("ttprice", ttprice);
			List<Brand> brandList = brandService.find();
			req.setAttribute("brandList", brandList);
			return "f:/page/user/user_pay.jsp";
		}catch(Exception e){
			return userCart(req,resp);
		}
	}
	/**
	 * 生成订单
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String createOrder(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException,
			SQLException {
		User user = (User)req.getSession().getAttribute("sessionUser");
		String userid = user.getUserid();
		String[] cids = req.getParameterValues("cid");
		String aid = req.getParameter("selectaddr");
		Address address = addressService.findByAid(aid);
		String oid = CommonUtils.uuid();
		Order order = new Order(oid, userid, 1, address.getProvince(), address.getCity(), address.getDistrict(), address.getDetail(), address.getName(), address.getTel());
		orderService.add(order);
		for(int i=0;i<cids.length;i++){
			String cid = cids[i];
			Cart cart = cartService.findByCid(cid);
			String gid = cart.getGid();
			String oiid = CommonUtils.uuid();
			Goods goods = goodsService.findByGid(gid);
			OrderItem orderitem = new OrderItem(oiid, oid, gid, cart.getNumber(), goods.getGprice());
			orderItemService.add(orderitem);
			cartService.delete(userid, cid);
		}
		req.setAttribute("oid", oid);
		List<Brand> brandList = brandService.find();
		req.setAttribute("brandList", brandList);
		return "f:/page/user/user_successed.jsp";
	}
	/**
	 * 发送订单到我的订单列表
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String userOrder(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException,
			SQLException {
		User user = (User)req.getSession().getAttribute("sessionUser");
		String userid = user.getUserid();
		List<Order> order0List = orderService.findByUseridAndStatus(userid, 0);
		List<Order> order1List = orderService.findByUseridAndStatus(userid, 1);
		List<Order> order2List = orderService.findByUseridAndStatus(userid, 2);
		List<Order> order3List = orderService.findByUseridAndStatus(userid, 3);
		List<Order> order4List = orderService.findByUseridAndStatus(userid, 4);
		/*
		 * 0.获取已经取消的订单
		 */
		List<OrderListItem> order0ListItemList = new ArrayList<OrderListItem>();
		for(int i=0;i<order0List.size();i++){
			List<ViewOrderItem> viewOrderItemList = new ArrayList<ViewOrderItem>();
			List<OrderItem> orderitemList = orderItemService.findByOid(order0List.get(i).getOid());
			double ttotalprice = 0;
			for(int j=0;j<orderitemList.size();j++){
				String oiid = orderitemList.get(j).getOiid();
				int number = orderitemList.get(j).getNumber();
				double totalprice = number * orderitemList.get(j).getUnitprice();
				ttotalprice += totalprice;
				String gid = orderitemList.get(j).getGid();
				Goods goods = goodsService.findByGid(gid);
				Lipstick lipstick = lipstickService.findByLid(goods.getLid());
				String lname = lipstick.getLname();
				Colorno colorno = colornoService.findByCnid(goods.getCnid());
				String cncode = colorno.getCncode();
				ViewOrderItem viewOrderItem = new ViewOrderItem(oiid, lname, cncode, number, totalprice);
				viewOrderItemList.add(viewOrderItem);
			}
			OrderListItem orderListItem = new OrderListItem(order0List.get(i).getOid(), viewOrderItemList, ttotalprice);
			order0ListItemList.add(orderListItem);
		}
		req.setAttribute("order0ListItemList", order0ListItemList);
		
		
		/*
		 * 1.获取未付款的订单
		 */
		List<OrderListItem> order1ListItemList = new ArrayList<OrderListItem>();
		for(int i=0;i<order1List.size();i++){
			List<ViewOrderItem> viewOrderItemList = new ArrayList<ViewOrderItem>();
			List<OrderItem> orderitemList = orderItemService.findByOid(order1List.get(i).getOid());
			double ttotalprice = 0;
			for(int j=0;j<orderitemList.size();j++){
				String oiid = orderitemList.get(j).getOiid();
				int number = orderitemList.get(j).getNumber();
				double totalprice = number * orderitemList.get(j).getUnitprice();
				ttotalprice += totalprice;
				String gid = orderitemList.get(j).getGid();
				Goods goods = goodsService.findByGid(gid);
				Lipstick lipstick = lipstickService.findByLid(goods.getLid());
				String lname = lipstick.getLname();
				Colorno colorno = colornoService.findByCnid(goods.getCnid());
				String cncode = colorno.getCncode();
				ViewOrderItem viewOrderItem = new ViewOrderItem(oiid, lname, cncode, number, totalprice);
				viewOrderItemList.add(viewOrderItem);
			}
			OrderListItem orderListItem = new OrderListItem(order1List.get(i).getOid(), viewOrderItemList, ttotalprice);
			order1ListItemList.add(orderListItem);
		}
		req.setAttribute("order1ListItemList", order1ListItemList);
		
		/*
		 * 2.获取等待发货的订单
		 */
		List<OrderListItem> order2ListItemList = new ArrayList<OrderListItem>();
		for(int i=0;i<order2List.size();i++){
			List<ViewOrderItem> viewOrderItemList = new ArrayList<ViewOrderItem>();
			List<OrderItem> orderitemList = orderItemService.findByOid(order2List.get(i).getOid());
			double ttotalprice = 0;
			for(int j=0;j<orderitemList.size();j++){
				String oiid = orderitemList.get(j).getOiid();
				int number = orderitemList.get(j).getNumber();
				double totalprice = number * orderitemList.get(j).getUnitprice();
				ttotalprice += totalprice;
				String gid = orderitemList.get(j).getGid();
				Goods goods = goodsService.findByGid(gid);
				Lipstick lipstick = lipstickService.findByLid(goods.getLid());
				String lname = lipstick.getLname();
				Colorno colorno = colornoService.findByCnid(goods.getCnid());
				String cncode = colorno.getCncode();
				ViewOrderItem viewOrderItem = new ViewOrderItem(oiid, lname, cncode, number, totalprice);
				viewOrderItemList.add(viewOrderItem);
			}
			OrderListItem orderListItem = new OrderListItem(order2List.get(i).getOid(), viewOrderItemList, ttotalprice);
			order2ListItemList.add(orderListItem);
		}
		req.setAttribute("order2ListItemList", order2ListItemList);
		
		/*
		 * 3.获取等待收货的订单
		 */
		List<OrderListItem> order3ListItemList = new ArrayList<OrderListItem>();
		for(int i=0;i<order3List.size();i++){
			List<ViewOrderItem> viewOrderItemList = new ArrayList<ViewOrderItem>();
			List<OrderItem> orderitemList = orderItemService.findByOid(order3List.get(i).getOid());
			double ttotalprice = 0;
			for(int j=0;j<orderitemList.size();j++){
				String oiid = orderitemList.get(j).getOiid();
				int number = orderitemList.get(j).getNumber();
				double totalprice = number * orderitemList.get(j).getUnitprice();
				ttotalprice += totalprice;
				String gid = orderitemList.get(j).getGid();
				Goods goods = goodsService.findByGid(gid);
				Lipstick lipstick = lipstickService.findByLid(goods.getLid());
				String lname = lipstick.getLname();
				Colorno colorno = colornoService.findByCnid(goods.getCnid());
				String cncode = colorno.getCncode();
				ViewOrderItem viewOrderItem = new ViewOrderItem(oiid, lname, cncode, number, totalprice);
				viewOrderItemList.add(viewOrderItem);
			}
			OrderListItem orderListItem = new OrderListItem(order3List.get(i).getOid(), viewOrderItemList, ttotalprice);
			order3ListItemList.add(orderListItem);
		}
		req.setAttribute("order3ListItemList", order3ListItemList);
		
		/*
		 * 4.获取已完成的订单
		 */
		List<OrderListItem> order4ListItemList = new ArrayList<OrderListItem>();
		for(int i=0;i<order4List.size();i++){
			List<ViewOrderItem> viewOrderItemList = new ArrayList<ViewOrderItem>();
			List<OrderItem> orderitemList = orderItemService.findByOid(order4List.get(i).getOid());
			double ttotalprice = 0;
			for(int j=0;j<orderitemList.size();j++){
				String oiid = orderitemList.get(j).getOiid();
				int number = orderitemList.get(j).getNumber();
				double totalprice = number * orderitemList.get(j).getUnitprice();
				ttotalprice += totalprice;
				String gid = orderitemList.get(j).getGid();
				Goods goods = goodsService.findByGid(gid);
				Lipstick lipstick = lipstickService.findByLid(goods.getLid());
				String lname = lipstick.getLname();
				Colorno colorno = colornoService.findByCnid(goods.getCnid());
				String cncode = colorno.getCncode();
				ViewOrderItem viewOrderItem = new ViewOrderItem(oiid, lname, cncode, number, totalprice);
				viewOrderItemList.add(viewOrderItem);
			}
			OrderListItem orderListItem = new OrderListItem(order4List.get(i).getOid(), viewOrderItemList, ttotalprice);
			order4ListItemList.add(orderListItem);
		}
		req.setAttribute("order4ListItemList", order4ListItemList);
		List<Brand> brandList = brandService.find();
		req.setAttribute("brandList", brandList);
		return "f:/page/user/user_orderlist.jsp";
	}
	public String cancelOrder(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException,
			SQLException {

		System.out.println("gfdsaddsfdsrt");
		return null;
	}
}
