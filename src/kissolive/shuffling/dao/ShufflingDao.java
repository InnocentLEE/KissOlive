package kissolive.shuffling.dao;

import java.sql.SQLException;
import java.util.List;

import kissolive.shuffling.domain.Shuffling;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import util.TxQueryRunner;

public class ShufflingDao {
	private QueryRunner qr = new TxQueryRunner();

	/**
	 * 查找所有记录
	 * 
	 * @return
	 * @throws SQLException
	 */
	public List<Shuffling> find() throws SQLException {
		String sql = "SELECT * FROM tb_shuffling ORDER BY orderBy DESC";
		List<Shuffling> list = qr.query(sql, new BeanListHandler<Shuffling>(Shuffling.class));
		return list;
	}
	public Shuffling findByOrderBy(int orderBy) throws SQLException{
		String sql = "SELECT * FROM tb_shuffling where orderBy=?";
		Shuffling shuffling = qr.query(sql, new BeanHandler<Shuffling>(Shuffling.class),orderBy);
		return shuffling;
	}
	public void update(String src,int orderBy) throws SQLException{
		String sql = "UPDATE tb_shuffling SET src=? WHERE orderBy=?";
		Object[] params = { src,orderBy };
		qr.update(sql, params);
	}
}
