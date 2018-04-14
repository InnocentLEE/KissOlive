package kissolive.brand.dao;

import java.sql.SQLException;
import java.util.List;

import kissolive.brand.domain.Brand;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import util.TxQueryRunner;

public class BrandDao {
	private QueryRunner qr = new TxQueryRunner();

	/**
	 * 添加一个品牌
	 * @param brand
	 * @throws SQLException
	 */
	public void add(Brand brand) throws SQLException {
		String sql = "insert into tb_brand(bid,bname,bsrc) values(?,?,?)";
		Object[] params = { brand.getBid(), brand.getBname(), brand.getBsrc() };
		qr.update(sql, params);
	}
	/**
	 * 查找全部品牌
	 * @return
	 * @throws SQLException
	 */
	public List<Brand> find() throws SQLException {
		String sql = "SELECT * FROM tb_brand";
		List<Brand> brandList = qr.query(sql, new BeanListHandler<Brand>(Brand.class));
		return brandList;
	}
	/**
	 * 根据品牌id查找品牌
	 * @param bid
	 * @return
	 * @throws SQLException
	 */
	public Brand findByBid(String bid) throws SQLException{
		String sql = "SELECT * FROM tb_brand WHERE bid=?";
		Brand brand = qr.query(sql, new BeanHandler<Brand>(Brand.class),bid);
		return brand;
	}
	/**
	 * 修改品牌信息
	 * @param brand
	 * @throws SQLException
	 */
	public void update(Brand brand) throws SQLException{
		String sql = "UPDATE tb_brand SET bname=?, bsrc=? WHERE bid=?";
		Object[] params = { brand.getBname(),brand.getBsrc(),brand.getBid() };
		qr.update(sql, params);
	}
	/**
	 * 删除一个品牌
	 * @param bid
	 * @throws SQLException
	 */
	public void delete(String bid) throws SQLException{
		String sql = "DELETE FROM tb_brand WHERE bid=?";
		qr.update(sql, bid);
	}
}
