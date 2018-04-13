package kissolive.user.dao;

import java.sql.SQLException;

import kissolive.user.domain.User;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import util.TxQueryRunner;

public class UserDao {
	private QueryRunner qr = new TxQueryRunner();
	/**
	 * 向数据库插入一条用户记录
	 * @param user
	 * @throws SQLException
	 */
	public void addUser(User user) throws SQLException {
		String sql = "insert into tb_user(userid,password,username,usertel) values(?,?,?,?)";
		Object[] params = {user.getUserid(),user.getPassword(),user.getUsername(),user.getUsertel()};
		qr.update(sql, params);
	}
	/**
	 * 验证手机是否已经被注册
	 * @param usertel
	 * @return
	 * @throws SQLException
	 */
	public boolean ajaxValidateUsertel(String usertel) throws SQLException {
		String sql = "select count(1) from tb_user where usertel=?";
		Number number = (Number)qr.query(sql, new ScalarHandler(), usertel);
		return number.intValue() == 0;
	}
	/**
	 * 根据手机号和密码查找用户
	 * @param usertel
	 * @param password
	 * @return
	 * @throws SQLException
	 */
	public User findByUsertelAndPassword(String usertel,String password) throws SQLException{
		String sql = "select count(*) from tb_user where usertel=? and password=?";
		User user = null;
		user = qr.query(sql, new BeanHandler<User>(User.class), usertel, password);
		return user;
	}
}
