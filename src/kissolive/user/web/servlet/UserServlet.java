package kissolive.user.web.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kissolive.user.service.UserService;
import util.BaseServlet;

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
		return "f:/...";
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
		/**测试boolean b = userService.ajaxValidateUsertel(usertel);**/
		System.out.print(usertel);
		String exitedUsertel = "17876253448";
		boolean b = !usertel.equals(exitedUsertel);
		
		resp.getWriter().print(b);
		return null;
	}

}
