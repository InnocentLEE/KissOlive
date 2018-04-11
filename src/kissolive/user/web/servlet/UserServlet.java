package kissolive.user.web.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.servlet.BaseServlet;
import kissolive.user.service.UserService;

public class UserServlet extends BaseServlet {

	private UserService userService = new UserService();
	/**
	 * 注册用户
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String regist(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String usertel = req.getParameter("usertel");
		String password = req.getParameter("password");
		String province = req.getParameter("province");
		String city = req.getParameter("city");
		String district = req.getParameter("district");
		String detail = req.getParameter("detail");
		String name = req.getParameter("name");
		String tel = req.getParameter("tel");
		System.out.println("usertel:"+usertel);
		System.out.println("password:"+password);
		System.out.println("province:"+province);
		System.out.println("city:"+city);
		System.out.println("district:"+district);
		System.out.println("detail:"+detail);
		System.out.println("name:"+name);
		System.out.println("tel:"+tel);
		return null;
		//return "f:/...";
	}
	/**
	 * 验证手机是否已经被注册
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String ajaxValidateUsertel(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException {

		String usertel = req.getParameter("usertel");
		boolean b = userService.ajaxValidateUsertel(usertel);
		System.out.println(b);
		/*
		System.out.print(usertel+"\n");
		String exitedUsertel = "17876253448";
		boolean b = !usertel.equals(exitedUsertel);
		System.out.print(b+"\n");
		*/
		resp.getWriter().print(b);
		return null;
	}

}
