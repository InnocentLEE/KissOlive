package kissolive.orderitem.dao;

import java.sql.SQLException;
import java.util.List;

import kissolive.orderitem.domain.OrderItem;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import util.TxQueryRunner;

public class OrderItemDao {
	private QueryRunner qr = new TxQueryRunner();
	/**
	 * 添加一个订单项
	 * @param orderitem
	 * @throws SQLException
	 */
	public void add(OrderItem orderitem) throws SQLException {
		String sql = "insert into tb_orderitem(oiid,oid,gid,number,unitprice) values(?,?,?,?,?)";
		Object[] params = { orderitem.getOiid(),orderitem.getOid(),orderitem.getGid(),orderitem.getNumber(),orderitem.getUnitprice() };
		qr.update(sql, params);
	}
	/**
	 * 查看某个订单下的所有订单项
	 * @param oid
	 * @return
	 * @throws SQLException
	 */
	public List<OrderItem> findByOid(String oid) throws SQLException{
		String sql = "SELECT * FROM tb_orderitem WHERE oid=?";
		List<OrderItem> orderitemList = qr.query(sql, new BeanListHandler<OrderItem>(OrderItem.class),oid);
		return orderitemList;
	}
}
