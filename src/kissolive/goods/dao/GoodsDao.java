package kissolive.goods.dao;

import java.sql.SQLException;
import java.util.List;

import kissolive.goods.domain.Goods;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import util.TxQueryRunner;

public class GoodsDao {
	private QueryRunner qr = new TxQueryRunner();

	/**
	 * 添加一个商品
	 * 
	 * @param goods
	 * @throws SQLException
	 */
	public void add(Goods goods) throws SQLException {
		String sql = "insert into tb_goods(gid,lid,cnid,gprice,gnumber,status) values(?,?,?,?,?,?)";
		Object[] params = { goods.getGid(), goods.getLid(), goods.getCnid(),
				goods.getGprice(), goods.getGnumber(), goods.getStatus() };
		qr.update(sql, params);
	}

	/**
	 * 查找某个口红的所有商品
	 * 
	 * @param lid
	 * @return
	 * @throws SQLException
	 */
	public List<Goods> findByLid(String lid) throws SQLException {
		String sql = "SELECT * FROM tb_goods where lid=? order by orderBy DESC";
		List<Goods> goodList = qr.query(sql, new BeanListHandler<Goods>(
				Goods.class), lid);
		return goodList;
	}

	/**
	 * 查找某个口红某个色号的商品
	 * 
	 * @param lid
	 * @return
	 * @throws SQLException
	 */
	public List<Goods> findByLidAndCnid(String lid, String cnid)
			throws SQLException {
		String sql = "SELECT * FROM tb_goods where lid=? and cnid=? order by orderBy DESC";
		List<Goods> goodList = qr.query(sql, new BeanListHandler<Goods>(
				Goods.class), lid, cnid);
		return goodList;
	}

	/**
	 * 查找某个色号的所有商品
	 * 
	 * @param lid
	 * @return
	 * @throws SQLException
	 */
	public List<Goods> findByCnid(String cnid) throws SQLException {
		String sql = "SELECT * FROM tb_goods where cnid=?";
		List<Goods> goodList = qr.query(sql, new BeanListHandler<Goods>(
				Goods.class), cnid);
		return goodList;
	}

	/**
	 * 根据gid查找某个商品
	 * 
	 * @param gid
	 * @return
	 * @throws SQLException
	 */
	public Goods findByGid(String gid) throws SQLException {
		String sql = "SELECT * FROM tb_goods where gid=?";
		Goods goods = qr.query(sql, new BeanHandler<Goods>(Goods.class), gid);
		return goods;
	}

	/**
	 * 更新某个商品的信息
	 * 
	 * @param goods
	 * @throws SQLException
	 */
	public void update(Goods goods) throws SQLException {
		String sql = "UPDATE tb_goods SET lid=?, cnid=?, gprice=?, gnumber=?, status=? WHERE gid=?";
		Object[] params = { goods.getLid(), goods.getCnid(), goods.getGprice(),
				goods.getGnumber(), goods.getStatus(), goods.getGid() };
		qr.update(sql, params);
	}

	/**
	 * 根据商品id更改商品的状态
	 * 
	 * @param gid
	 * @param status
	 * @throws SQLException 
	 */
	public void updateStatusByGid(String gid, int status) throws SQLException {
		String sql = "UPDATE tb_goods SET status=? WHERE gid=?";
		Object[] params = { status, gid };
		qr.update(sql, params);
	}

	/**
	 * 删除某个商品
	 * 
	 * @param gid
	 * @throws SQLException
	 */
	public void delete(String gid) throws SQLException {
		String sql = "DELETE FROM tb_goods WHERE gid=?";
		qr.update(sql, gid);
	}
}
