package kissolive.orderitem.service;

import java.sql.SQLException;
import java.util.List;

import kissolive.orderitem.dao.OrderItemDao;
import kissolive.orderitem.domain.OrderItem;

public class OrderItemService {
	private OrderItemDao orderItemDao = new OrderItemDao();
	public void add(OrderItem orderitem){
		try {
			orderItemDao.add(orderitem);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public List<OrderItem> findByOid(String oid){
		try {
			return orderItemDao.findByOid(oid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
