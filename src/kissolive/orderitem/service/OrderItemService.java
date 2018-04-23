package kissolive.orderitem.service;

import java.sql.SQLException;

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
}
