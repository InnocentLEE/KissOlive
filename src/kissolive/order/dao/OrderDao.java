package kissolive.order.dao;

import java.sql.SQLException;
import java.util.List;

import kissolive.order.domain.Order;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import util.TxQueryRunner;

public class OrderDao {
	private QueryRunner qr = new TxQueryRunner();
	/**
	 * 添加一条订单记录
	 * @param order
	 * @throws SQLException
	 */
	public void add(Order order) throws SQLException {
		String sql = "insert into tb_order(oid,userid,status,province,city,district,detail,name,tel,createtime,newtime) values(?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params = { order.getOid(), order.getUserid(),order.getStatus(),order.getProvince(),order.getCity(),order.getDistrict(),order.getDetail(),order.getName(),order.getTel(),order.getCreatetime(),order.getNewtime()};
		qr.update(sql, params);
	}
	/**
	 * 查看所有的订单
	 * @return
	 * @throws SQLException
	 */
	public List<Order> find() throws SQLException {
		String sql = "SELECT * FROM tb_order order by orderBy DESC";
		List<Order> orderList = qr.query(sql, new BeanListHandler<Order>(Order.class));
		return orderList;
	}
	/**
	 * 某用户的全部订单
	 * @param userid
	 * @return
	 * @throws SQLException
	 */
	public List<Order> findByUserid(String userid) throws SQLException {
		String sql = "SELECT * FROM tb_order where userid=? order by orderBy DESC";
		List<Order> orderList = qr.query(sql, new BeanListHandler<Order>(Order.class),userid);
		return orderList;
	}
	/**
	 * 根据订单状态查看订单
	 * @param status
	 * @return
	 * @throws SQLException
	 */
	public List<Order> findByStatus(int status) throws SQLException {
		String sql = "SELECT * FROM tb_order where status=? order by orderBy DESC";
		List<Order> orderList = qr.query(sql, new BeanListHandler<Order>(Order.class),status);
		return orderList;
	}
	/**
	 * 用户根据状态查看订单
	 * @param userid
	 * @param status
	 * @return
	 * @throws SQLException
	 */
	public List<Order> findByUserAndStatus(String userid,int status) throws SQLException {
		String sql = "SELECT * FROM tb_order where userid=? and status=? order by orderBy DESC";
		List<Order> orderList = qr.query(sql, new BeanListHandler<Order>(Order.class),userid,status);
		return orderList;
	}
	/**
	 * 根据id查询订单
	 * @param oid
	 * @return
	 * @throws SQLException
	 */
	public Order findByOid(String oid) throws SQLException {
		String sql = "SELECT * FROM tb_order where oid=?";
		Order order = qr.query(sql, new BeanHandler<Order>(Order.class),oid);
		return order;
	}
	/**
	 * 修改某个订单的状态
	 * @param oid
	 * @param status
	 * @throws SQLException
	 */
	public void update(String oid, int status) throws SQLException{
		String sql = "UPDATE tb_order SET status=? WHERE oid=?";
		Object[] params = { status,oid };
		qr.update(sql, params);
	}
}
