package test.util;


import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.servlet.BaseServlet;

public class CssTestServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
       
    public CssTestServlet() {
        super();
    }
    public String Csstest(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
    	String msg = "#000000";
		req.setAttribute("CSS", msg);
		return "f:/page/admin/admin_color.jsp";
	}

}