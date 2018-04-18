package kissolive.lipstick.dao;

import java.sql.SQLException;
import java.util.List;

import kissolive.lipstick.domain.Lipstick;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import util.TxQueryRunner;

public class LipstickDao {
	private QueryRunner qr = new TxQueryRunner();
	/**
	 * 添加一个口红
	 * @param lipstick
	 * @throws SQLException
	 */
	public void add(Lipstick lipstick) throws SQLException {
		String sql = "insert into tb_lipstick(lid,sid,hid,lname,lorigin,shelflife,skin) values(?,?,?,?,?,?,?)";
		Object[] params = { lipstick.getLid(),lipstick.getSid(),lipstick.getHid(),lipstick.getLname(),lipstick.getLorigin(),lipstick.getShelflife(),lipstick.getSkin() };
		qr.update(sql, params);
	}
	/**
	 * 查找所有口红
	 * @return
	 * @throws SQLException
	 */
	public List<Lipstick> find() throws SQLException {
		String sql = "SELECT * FROM tb_lipstick order by orderBy DESC";
		List<Lipstick> lipstickList = qr.query(sql, new BeanListHandler<Lipstick>(Lipstick.class));
		return lipstickList;
	}
	/**
	 * 查找某个系列的所有口红
	 * @param sid
	 * @return
	 * @throws SQLException
	 */
	public List<Lipstick> findBySid(String sid) throws SQLException {
		String sql = "SELECT * FROM tb_lipstick where sid=?  order by orderBy DESC";
		List<Lipstick> lipstickList = qr.query(sql, new BeanListHandler<Lipstick>(Lipstick.class),sid);
		return lipstickList;
	}
	/**
	 * 查找同一选购热点的所有口红
	 * @param sid
	 * @return
	 * @throws SQLException
	 */
	public List<Lipstick> findByHid(String hid) throws SQLException {
		String sql = "SELECT * FROM tb_lipstick where hid=?  order by orderBy DESC";
		List<Lipstick> lipstickList = qr.query(sql, new BeanListHandler<Lipstick>(Lipstick.class),hid);
		return lipstickList;
	}
	/**
	 * 查找某个系列的所有口红数量
	 * @param sid
	 * @return
	 * @throws SQLException
	 */
	public int countBySid(String sid) throws SQLException {
		String sql = "SELECT count(1) FROM tb_lipstick where sid=?";
		Number number = (Number)qr.query(sql, new ScalarHandler(), sid);
		return number.intValue();
	}
	/**
	 * 通过id查找口红
	 * @param lid
	 * @return
	 * @throws SQLException
	 */
	public Lipstick findByLid(String lid) throws SQLException {
		String sql = "SELECT * FROM tb_lipstick where lid=?";
		Lipstick lipstick = qr.query(sql, new BeanHandler<Lipstick>(Lipstick.class),lid);
		return lipstick;
	}
	/**
	 * 修改口红信息
	 * @param lipstick
	 * @throws SQLException
	 */
	public void update(Lipstick lipstick) throws SQLException{
		String sql = "UPDATE tb_brand SET sid=?, hid=?, lname=?, lorigin=?, shelflife=?, skin=? WHERE lid=?";
		Object[] params = { lipstick.getSid(),lipstick.getHid(),lipstick.getLname(),lipstick.getLorigin(),lipstick.getShelflife(),lipstick.getSkin(),lipstick.getLid()};
		qr.update(sql, params);
	}
	/**
	 * 删除一个口红
	 * @param lid
	 * @throws SQLException
	 */
	public void delete(String lid) throws SQLException{
		String sql = "DELETE FROM tb_lipstick WHERE lid=?";
		qr.update(sql, lid);
	}
}
