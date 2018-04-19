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
	public List<Recommend> findByBid(String bid) throws SQLException{
		 String sql = "SELECT * FROM tb_recommend where bid=?";
			List<Recommend> recommendList = qr.query(sql, new BeanListHandler<Recommend>(Recommend.class),bid);
			return recommendList;
	}
	public List<Recommend> findBySid(String sid) throws SQLException{
		 String sql = "SELECT * FROM tb_recommend where sid1=? or sid2=?";
			List<Recommend> recommendList = qr.query(sql, new BeanListHandler<Recommend>(Recommend.class),sid,sid);
			return recommendList;
	}
	public List<Recommend> findByLid(String lid) throws SQLException{
		 String sql = "SELECT * FROM tb_recommend where lid=?";
			List<Recommend> recommendList = qr.query(sql, new BeanListHandler<Recommend>(Recommend.class),lid);
			return recommendList;
	}
}
