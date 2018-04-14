package kissolive.user.service;

import java.sql.SQLException;

import org.apache.commons.dbutils.handlers.BeanHandler;

import kissolive.user.dao.UserDao;
import kissolive.user.domain.User;
import util.CommonUtils;
import util.SymmetricEncoder;

public class UserService {
	private UserDao userDao = new UserDao();

	/**
	 * 注册用户
	 * 
	 * @param user
	 */
	public void regist(User user) {
		// 生成用户ID
		user.setUserid(CommonUtils.uuid());

		// 对密码进行加密
		String encodeRules = user.getUsertel();
		String content = user.getPassword();
		user.setPassword(SymmetricEncoder.AESEncode(encodeRules, content));

		// 数据库插入用户
		try {
			userDao.addUser(user);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 验证手机是否已经被注册
	 * 
	 * @param usertel
	 * @return
	 */
	public boolean ajaxValidateUsertel(String usertel) {
		try {
			return userDao.ajaxValidateUsertel(usertel);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	/**
	 * 登录
	 * @param usertel
	 * @param password
	 * @return
	 */
	public User login(String usertel, String password) {
		String encodeRules = usertel;
		String content = password;
		password = SymmetricEncoder.AESEncode(encodeRules, content);
		
		try {
			return userDao.findByUsertelAndPassword(usertel, password);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public String findPasswordByUsertel(String usertel) {
		try {
			User user = userDao.findPasswordByUsertel(usertel);
			return SymmetricEncoder.AESDncode(user.getUsertel(), user.getPassword());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}