package kissolive.series.dao;

import java.sql.SQLException;
import java.util.List;

import kissolive.brand.domain.Brand;
import kissolive.series.domain.Series;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import util.TxQueryRunner;

public class SeriesDao {
	private QueryRunner qr = new TxQueryRunner();
	/**
	 * 往数据库插入一条系列的记录
	 * @param dbseries
	 * @throws SQLException
	 */
	public void add(Series series) throws SQLException{
		String sql = "insert into tb_series(sid,bid,sname,ssrc) values(?,?,?,?)";
		Object[] params = { series.getSid(),series.getBid(),series.getSname(),series.getSsrc() };
		qr.update(sql, params);
	}
	/**
	 * 查找某个品牌下的全部系列
	 * @param bid
	 * @return
	 * @throws SQLException
	 */
	public List<Series> findByBid(String bid) throws SQLException{
		String sql = "SELECT * FROM tb_series where bid=?  order by orderBy DESC";
		List<Series> seriesList = qr.query(sql, new BeanListHandler<Series>(Series.class),bid);
		return seriesList;
	}
	/**
	 * 根据系列id查找系列
	 * @param sid
	 * @return
	 * @throws SQLException
	 */
	public Series findBySid(String sid) throws SQLException{
		String sql = "SELECT * FROM tb_series where sid=?";
		Series series = qr.query(sql, new BeanHandler<Series>(Series.class),sid);
		return series;
	}
	/**
	 * 修改系列信息
	 * @param series
	 * @throws SQLException
	 */
	public void update(Series series) throws SQLException{
		String sql = "UPDATE tb_series SET bid=?, sname=?, ssrc=? WHERE sid=?";
		Object[] params = { series.getBid(),series.getSname(),series.getSsrc(),series.getSid() };
		qr.update(sql, params);
	}
	/**
	 * 删除一个系列
	 * @param sid
	 * @throws SQLException
	 */
	public void delete(String sid) throws SQLException{
		String sql = "DELETE FROM tb_series WHERE sid=?";
		qr.update(sql, sid);
	}
}
