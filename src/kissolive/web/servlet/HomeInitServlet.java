package kissolive.web.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kissolive.brand.domain.Brand;
import kissolive.brand.service.BrandService;
import kissolive.recommend.domain.RecommendResult;
import kissolive.recommend.service.RecommendService;
import kissolive.shuffling.domain.Shuffling;
import kissolive.shuffling.service.ShufflingService;

import org.junit.Test;

import cn.itcast.servlet.BaseServlet;

public class HomeInitServlet extends BaseServlet {

	private ShufflingService shufflingService = new ShufflingService();
	private RecommendService recommendService = new RecommendService();
	private BrandService brandService = new BrandService();
	@Test
	public void test(){
		List<Shuffling> resultList = shufflingService.findLast5();
		System.out.println(resultList.get(0).getSrc());
		System.out.println(resultList.get(1).getSrc());
		System.out.println(resultList.get(2).getSrc());
		System.out.println(resultList.get(3).getSrc());
		System.out.println(resultList.get(4).getSrc());

	}
	public String initHomepage(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException {
		List<Shuffling> resultList = shufflingService.findLast5();
		for(int i=1;i<=resultList.size();i++)
			req.setAttribute("src"+i, resultList.get(i-1).getSrc());
		List<RecommendResult> recommendresultList = recommendService.findLast2();
		if(recommendresultList!=null){
			req.setAttribute("recommendresult1", recommendresultList.get(0));
			req.setAttribute("recommendresult2", recommendresultList.get(1));
		}
		List<Brand> brandList = brandService.find();
		req.setAttribute("brandList", brandList);
		return "f:/page/user/user_home.jsp";
	}

}
