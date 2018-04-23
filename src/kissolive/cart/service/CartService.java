package kissolive.cart.service;

import java.sql.SQLException;
import java.util.List;

import kissolive.cart.dao.CartDao;
import kissolive.cart.domain.Cart;

public class CartService {
	private CartDao cartDao = new CartDao();
	public void add(Cart cart){
		try {
			cartDao.add(cart);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public Cart findByUseridAndGid(String userid,String gid){
		try {
			return cartDao.findByUseridAndGid(userid, gid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void update(String userid,String cid,int number){
		try {
			cartDao.update(userid, cid, number);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public List<Cart> findByUserid(String userid){
		try {
			return cartDao.findByUserid(userid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public Cart findByCid(String cid){
		try {
			return cartDao.findByCid(cid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void delete(String userid, String cid){
		try {
			cartDao.delete(userid, cid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
