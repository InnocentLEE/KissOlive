package kissolive.recommend.dao;

import java.sql.SQLException;
import java.util.List;

import kissolive.recommend.domain.Recommend;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.itcast.jdbc.TxQueryRunner;


public class RecommendDao {
	private QueryRunner qr = new TxQueryRunner();
	
	public List<Recommend> find() throws SQLException{
		String sql = "SELECT * FROM tb_recommend ORDER BY orderBy DESC";
		List<Recommend> recommendList = qr.query(sql, new BeanListHandler<Recommend>(Recommend.class));
		return recommendList;
	}
}
