package kissolive.cart.dao;

import java.sql.SQLException;
import java.util.List;

import kissolive.cart.domain.Cart;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import util.TxQueryRunner;

public class CartDao {
	private QueryRunner qr = new TxQueryRunner();
	/**
	 * 添加一个商品到购物车里
	 * @param cart
	 * @throws SQLException
	 */
	public void add(Cart cart) throws SQLException {
		String sql = "insert into tb_cart(cid,userid,gid,number) values(?,?,?,?)";
		Object[] params = { cart.getCid(),cart.getUserid(),cart.getGid(),cart.getNumber() };
		qr.update(sql, params);
	}
	/**
	 * 查找某个用户购物车的信息
	 * @param userid
	 * @return
	 * @throws SQLException
	 */
	public List<Cart> findByUserid(String userid) throws SQLException {
		String sql = "SELECT * FROM tb_brand where userid=? order by orderBy";
		List<Cart> cartList = qr.query(sql, new BeanListHandler<Cart>(Cart.class),userid);
		return cartList;
	}
	/**
	 * 修改购物车中某个商品的记录
	 * @param userid
	 * @param cid
	 * @param number
	 * @throws SQLException
	 */
	public void update(String userid,String cid,int number) throws SQLException{
		String sql = "UPDATE tb_cart SET number=? WHERE userid=? and cid=?";
		Object[] params = { number,userid,cid };
		qr.update(sql, params);
	}
	/**
	 * 删除购物车里的某个商品
	 * @param userid
	 * @param cid
	 * @throws SQLException
	 */
	public void delete(String userid,String cid) throws SQLException{
		String sql = "DELETE FROM tb_cart WHERE userid=? and cid=?";
		Object[] params = { userid,cid };
		qr.update(sql, params);
	}
}
