package kissolive.colorno.dao;

import java.sql.SQLException;
import java.util.List;

import kissolive.colorno.domain.Colorno;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import util.TxQueryRunner;

public class ColornoDao {
	private QueryRunner qr = new TxQueryRunner();

	/**
	 * 添加一个色号
	 * 
	 * @param colorno
	 * @throws SQLException
	 */
	public void add(Colorno colorno) throws SQLException {
		String sql = "insert into tb_colorno(cnid,cncode,cnRGB) values(?,?,?)";
		Object[] params = { colorno.getCnid(), colorno.getCncode(),
				colorno.getCnRGB() };
		qr.update(sql, params);
	}

	/**
	 * 查找全部色号
	 * 
	 * @return
	 * @throws SQLException
	 */
	public List<Colorno> find() throws SQLException {
		String sql = "SELECT * FROM tb_colorno order by orderBy DESC";
		List<Colorno> colornoList = qr.query(sql, new BeanListHandler<Colorno>(
				Colorno.class));
		return colornoList;
	}

	/**
	 * 根据色号id查找色号
	 * 
	 * @param cnid
	 * @return
	 * @throws SQLException
	 */
	public Colorno findByCnid(String cnid) throws SQLException {
		String sql = "SELECT * FROM tb_colorno WHERE cnid=?";
		Colorno colorno = qr.query(sql,
				new BeanHandler<Colorno>(Colorno.class), cnid);
		return colorno;
	}

	/**
	 * 修改色号信息
	 * 
	 * @param colorno
	 * @throws SQLException
	 */
	public void update(Colorno colorno) throws SQLException {
		String sql = "UPDATE tb_colorno SET cncode=?, cnRGB=? WHERE cnid=?";
		Object[] params = { colorno.getCncode(), colorno.getCnRGB(),
				colorno.getCnid() };
		qr.update(sql, params);
	}

	/**
	 * 删除一个色号
	 * 
	 * @param cnid
	 * @throws SQLException
	 */
	public void delete(String cnid) throws SQLException {
		String sql = "DELETE FROM tb_colorno WHERE cnid=?";
		qr.update(sql, cnid);
	}
}
