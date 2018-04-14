package kissolive.web.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kissolive.shuffling.domain.Shuffling;
import kissolive.shuffling.service.ShufflingService;

import org.junit.Test;

import cn.itcast.servlet.BaseServlet;

public class HomeInitServlet extends BaseServlet {

	private ShufflingService shufflingService = new ShufflingService();
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
		//获取轮播图片的地址
		List<Shuffling> resultList = shufflingService.findLast5();
		req.setAttribute("src1", resultList.get(0).getSrc());
		req.setAttribute("src2", resultList.get(1).getSrc());
		req.setAttribute("src3", resultList.get(2).getSrc());
		req.setAttribute("src4", resultList.get(3).getSrc());
		req.setAttribute("src5", resultList.get(4).getSrc());
		
		return null;
	}

}
