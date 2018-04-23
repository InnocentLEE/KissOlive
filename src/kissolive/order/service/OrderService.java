package kissolive.order.service;

import java.sql.SQLException;
import java.util.List;

import kissolive.order.dao.OrderDao;
import kissolive.order.domain.Order;

public class OrderService {
	private OrderDao orderDao = new OrderDao();
	public void add(Order order){
		try {
			orderDao.add(order);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public List<Order> findByUseridAndStatus(String userid,int status){
		try {
			return orderDao.findByUserAndStatus(userid, status);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void update(String oid,int status){
		try {
			orderDao.update(oid, status);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public List<Order> findByStatuse(int status){
		try {
			return orderDao.findByStatus(status);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
