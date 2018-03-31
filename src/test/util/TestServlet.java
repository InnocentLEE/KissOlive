package test.util;


import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.servlet.BaseServlet;

public class TestServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
       
    public TestServlet() {
        super();
    }
    public String test(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
    	String msg = "测试一哈";
		req.setAttribute("MSG", msg);
		return "f:/test/test.jsp";
	}
    public String ajaxValidateUsername(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String username = req.getParameter("username");
		String exitedUsername = "love";
		boolean b = !username.equals(exitedUsername);
		resp.getWriter().print(b);
		return null;
	}
}
