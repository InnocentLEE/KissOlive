package kissolive.hotspot.dao;

import java.sql.SQLException;
import java.util.List;

import kissolive.hotspot.domain.Hotspot;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import util.TxQueryRunner;

public class HotspotDao {
	private QueryRunner qr = new TxQueryRunner();
	/**
	 * 添加一个选购热点
	 * @param hotspot
	 * @throws SQLException
	 */
	public void add(Hotspot hotspot) throws SQLException {
		String sql = "insert into tb_hotspot(hid,hdescribe) values(?,?)";
		Object[] params = { hotspot.getHid(), hotspot.getHdescribe() };
		qr.update(sql, params);
	}
	/**
	 * 查找全部选购热点
	 * @return
	 * @throws SQLException
	 */
	public List<Hotspot> find() throws SQLException{
		String sql = "SELECT * FROM tb_hotspot";
		List<Hotspot> hotspotList = qr.query(sql, new BeanListHandler<Hotspot>(Hotspot.class));
		return hotspotList;
	}
	/**
	 * 根据选购热点id查找选购热点
	 * @param hid
	 * @return
	 * @throws SQLException
	 */
	public Hotspot findByHid(String hid) throws SQLException{
		String sql = "SELECT * FROM tb_hotspot WHERE hid=?";
		Hotspot hotspot = qr.query(sql, new BeanHandler<Hotspot>(Hotspot.class),hid);
		return hotspot;
	}
	/**
	 * 修改选购热点信息
	 * @param hotspot
	 * @throws SQLException
	 */
	public void update(Hotspot hotspot) throws SQLException{
		String sql = "UPDATE tb_hotspotSET hdescribe=? WHERE hid=?";
		Object[] params = { hotspot.getHdescribe(),hotspot.getHid() };
		qr.update(sql, params);
	}
	/**
	 * 删除一个选购热点
	 * @param hid
	 * @throws SQLException
	 */
	public void delete(String hid) throws SQLException{
		String sql = "DELETE FROM tb_hotspot WHERE hid=?";
		qr.update(sql, hid);
	}
}
