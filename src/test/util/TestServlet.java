package test.util;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kissolive.brand.domain.Brand;
import kissolive.series.domain.Series;
import cn.itcast.servlet.BaseServlet;

public class TestServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
       
    public TestServlet() {
        super();
    }
    
    public String addLipstick1(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
    	Brand brand1 = new Brand("bid1", "品牌一", "bsrc1");
    	Brand brand2 = new Brand("bid2", "品牌二", "bsrc2");
    	List<Brand> brandList = new ArrayList<Brand>();
    	brandList.add(brand1);
    	brandList.add(brand2);
    	req.setAttribute("brandList", brandList);
		return "f:/test/testAddLipstick.jsp";
	
	}
    public String ajaxValidateUsername(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String username = req.getParameter("username");
		String exitedUsername = "love";
		boolean b = !username.equals(exitedUsername);
		resp.getWriter().print(b);
		return null;
	}
    
    public String ajaxFindSeries(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String bid = req.getParameter("bid");
		List<Series> seriesList = new ArrayList<Series>();
		if(bid.equals("bid1")){
			Series series1 = new Series("sid11", "bid1", "品牌一系列1", "ssrc11"); 
			Series series2 = new Series("sid12", "bid1", "品牌一系列2", "ssrc12"); 
			seriesList.add(series1);
			seriesList.add(series2);
		}
		if(bid.equals("bid2")){
			Series series1 = new Series("sid21", "bid2", "品牌二系列1", "ssrc21"); 
			Series series2 = new Series("sid22", "bid2", "品牌二系列2", "ssrc22"); 
			seriesList.add(series1);
			seriesList.add(series2);
		}
		String json = toJson(seriesList);
		System.out.println(json);
		resp.getWriter().print(json);
		return null;
	}
	
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
    
}
