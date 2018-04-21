package kissolive.cart.service;

import java.sql.SQLException;

import kissolive.cart.dao.CartDao;
import kissolive.cart.domain.Cart;

public class CartService {
	private CartDao cartDao = new CartDao();
	public void add(Cart cart){
		try {
			cartDao.add(cart);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	public Cart findByUseridAndGid(String userid,String gid){
		try {
			return cartDao.findByUseridAndGid(userid, gid);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	public void update(String userid,String cid,int number){
		try {
			cartDao.update(userid, cid, number);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
}
