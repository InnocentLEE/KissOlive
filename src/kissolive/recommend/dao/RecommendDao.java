package kissolive.recommend.dao;

import java.sql.SQLException;
import java.util.List;

import kissolive.recommend.domain.DBRecommend;
import kissolive.recommend.domain.Recommend;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import util.TxQueryRunner;

public class RecommendDao {
	private QueryRunner qr = new TxQueryRunner();
	
	public List<Recommend> find() throws SQLException{
		List<Recommend> recommendList = null;
		String sql = "SELECT * FROM tb_recommend ORDER BY orderBy DESC";
		List<DBRecommend> dbrecommendList = qr.query(sql, new BeanListHandler<DBRecommend>(DBRecommend.class));
		
		return null;
	}
}
