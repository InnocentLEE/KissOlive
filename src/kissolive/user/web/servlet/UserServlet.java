package kissolive.user.web.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kissolive.address.domain.Address;
import kissolive.address.service.AddressService;
import kissolive.user.domain.User;
import kissolive.user.service.UserService;
import util.MNS;
import util.Validate;
import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

import com.aliyun.mns.common.ClientException;

public class UserServlet extends BaseServlet {

	private UserService userService = new UserService();
	private AddressService addressService = new AddressService();

	/**
	 * 注册用户
	 * 
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
		String password2 = req.getParameter("password2");
		String province = req.getParameter("province");
		String city = req.getParameter("city");
		String district = req.getParameter("district");
		String detail = req.getParameter("detail");
		String name = req.getParameter("name");
		String tel = req.getParameter("tel");
		String verifyCode = req.getParameter("verifyCode");
		Map<String, String> errors = validateRegist(usertel, password,
				password2, province, city, district, detail, name, tel,
				verifyCode, req.getSession());
		if (errors.size() > 0) {
			req.setAttribute("usertel", usertel);
			req.setAttribute("password", password);
			req.setAttribute("password2", password2);
			req.setAttribute("province", province);
			req.setAttribute("city", city);
			req.setAttribute("district", district);
			req.setAttribute("detail", detail);
			req.setAttribute("name", name);
			req.setAttribute("tel", tel);
			req.setAttribute("verifyCode", verifyCode);
			req.setAttribute("errors", errors);
			return "f:/page/user/user_register.jsp";
		}
		// 添加用户记录
		String userid = CommonUtils.uuid();
		User user = new User(userid, password, usertel, usertel);
		userService.regist(user);

		// 添加收货地址并设置为默认收货地址
		AddressService addressService = new AddressService();
		Address address = new Address(CommonUtils.uuid(), user, province, 1,
				city, district, detail, name, tel);
		addressService.addAddress(address);

		// 注册成功自动登录
		req.getSession().setAttribute("sessionUser", user);
		// 重定向到主页
		return "r:/page/user/user_home.jsp";
	}

	/**
	 * 校验注册表单信息
	 * 
	 * @param usertel
	 * @param password
	 * @param password2
	 * @param province
	 * @param city
	 * @param district
	 * @param detail
	 * @param name
	 * @param tel
	 * @param verifyCode
	 * @param session
	 * @return
	 */
	public Map<String, String> validateRegist(String usertel, String password,
			String password2, String province, String city, String district,
			String detail, String name, String tel, String verifyCode,
			HttpSession session) {
		Map<String, String> errors = new HashMap<String, String>();
		// 校验手机号
		if (usertel == null || usertel.trim().equals("")) {
			errors.put("usertel", "● 手机号码不能为空！");
		} else if (usertel.length() != 11) {
			errors.put("usertel", "● 请输入11位正确的手机号码！");
		} else if (!Validate.validateTelphone(usertel)) {
			errors.put("usertel", "● 请输入11位正确的手机号码！");
		} else if (!userService.ajaxValidateUsertel(usertel)) {
			errors.put("usertel", "● 手机号已被注册！");
		}
		// 校验密码
		if (password == null || password.trim().equals("")) {
			errors.put("password", "● 密码不能为空！");
		} else if (!Validate.validatePassword(password)) {
			errors.put("password", "● 密码以字母开头，长度6-18位，只包含数字、字母或下划线！");
		}
		// 校验确认密码
		if (password2 == null || password2.trim().equals("")) {
			errors.put("password2", "● 密码不能为空！");
		} else if (!password.equals(password2)) {
			errors.put("password2", "● 两次输入的密码不一致");
		}
		// 校验详细地址
		if (detail == null || detail.trim().equals("")) {
			errors.put("detail", "● 详细地址不能为空！");
		}
		// 校验收件人
		if (name == null || name.trim().equals("")) {
			errors.put("name", "● 收件人不能为空！");
		}
		// 校验收件联系方式
		if (tel == null || tel.trim().equals("")) {
			errors.put("tel", "●  联系方式不能为空！");
		} else if (tel.length() != 11) {
			errors.put("tel", "● 请输入11位正确的手机号码！");
		} else if (!Validate.validateTelphone(tel)) {
			errors.put("tel", "● 请输入11位正确的手机号码！");
		}
		// 校验短信验证码
		String rightVerifyCode = (String) session.getAttribute("VerifyCode");
		if (rightVerifyCode == null)
			rightVerifyCode = "";
		if (verifyCode == null || verifyCode.trim().equals("")) {
			errors.put("verifyCode", "● 验证码不能为空！");
		} else if (!rightVerifyCode.equals(verifyCode)) {
			errors.put("verifyCode", "● 验证码错误！");
		}
		return errors;
	}

	/**
	 * 验证手机是否已经被注册
	 * 
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String ajaxValidateUsertel(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException,
			SQLException {

		String usertel = req.getParameter("usertel");
		boolean b = userService.ajaxValidateUsertel(usertel);
		System.out.println(b);
		/*
		 * System.out.print(usertel+"\n"); String exitedUsertel = "17876253448";
		 * boolean b = !usertel.equals(exitedUsertel); System.out.print(b+"\n");
		 */
		resp.getWriter().print(b);
		return null;
	}

	/**
	 * 发送验证码
	 * 
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 * @throws com.aliyuncs.exceptions.ClientException
	 */
	public String sentVerifyCode(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException,
			SQLException, com.aliyuncs.exceptions.ClientException {

		String usertel = req.getParameter("usertel");

		/* 测试ajax发送验证码是否访问正常 */
		// System.out.print("Usertel_print: "+usertel+"\n");

		// 判断手机号码
		Map<String, String> errors = new HashMap<String, String>();
		if (usertel == null || usertel.trim().equals("")) {
			errors.put("verifyCode", "● 手机号码不能为空！");
		} else if (usertel.length() != 11) {
			errors.put("verifyCode", "● 请输入11位正确的手机号码！");
		} else if (!Validate.validateTelphone(usertel)) {
			errors.put("verifyCode", "● 请输入11位正确的手机号码！");
		} else if (!userService.ajaxValidateUsertel(usertel)) {
			errors.put("verifyCode", "● 手机号已被注册！");
		}
		if (errors.size() == 0) {
			// String VerifyCode = "3498";
			String VerifyCode = MNS.getVerifyCode();
			try {
				MNS.sendSms(usertel, VerifyCode);
			} catch (ClientException e) {
				throw new RuntimeException();
			}
			req.getSession().setAttribute("VerifyCode", VerifyCode);
		}
		return null;
	}

	/**
	 * ajax异步校验验证码
	 * 
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String ajaxValidateVerifyCode(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException,
			SQLException {

		String verifyCode = req.getParameter("verifyCode");
		/*
		 * 测试ajax是否访问 System.out.print("VerifyCode_print : "verifyCode+"\n");
		 */
		String rightVerifyCode = null;
		rightVerifyCode = (String) req.getSession().getAttribute("VerifyCode");
		boolean b = rightVerifyCode.equals(verifyCode);
		resp.getWriter().print(b);

		return null;
	}
	/**
	 * 登录功能
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String login(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException {
		String usertel = req.getParameter("usertel");
		String password = req.getParameter("password");
		System.out.println(usertel+password);
//		User user = userService.login(usertel, password);
//		if (user != null) {
//			req.getSession().setAttribute("sessionUser", user);
//			// 重定向到主页
//			return "r:/page/user/user_home.jsp";
//		} else {
//			req.setAttribute("usertel", usertel);
//			req.setAttribute("password", password);
//			req.setAttribute("errors", "手机号或密码错误");
//		}
		return null;
	}
}
