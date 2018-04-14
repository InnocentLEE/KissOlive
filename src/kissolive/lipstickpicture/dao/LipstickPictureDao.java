package kissolive.lipstickpicture.dao;

import java.sql.SQLException;
import java.util.List;

import kissolive.lipstickpicture.domain.LipstickPicture;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import util.TxQueryRunner;

public class LipstickPictureDao {
	private QueryRunner qr = new TxQueryRunner();
	/**
	 * 添加一张口红图片
	 * @param lipstickpicture
	 * @throws SQLException
	 */
	public void add(LipstickPicture lipstickpicture) throws SQLException {
		String sql = "insert into tb_lipstickpicture(lpid,lid,lpsrc,ismain) values(?,?,?,?)";
		Object[] params = { lipstickpicture.getLpid(),lipstickpicture.getLid(),lipstickpicture.getLpsrc(),lipstickpicture.getIsmain() };
		qr.update(sql, params);
	}
	/**
	 * 查找某个口红的详情描述图
	 * @return
	 * @throws SQLException
	 */
	public List<LipstickPicture> findPictureByLid(String lid) throws SQLException {
		String sql = "SELECT * FROM tb_lipstickpicture where lid=? and ismain=0 order by orderBy";
		List<LipstickPicture> lipstickpictureList = qr.query(sql, new BeanListHandler<LipstickPicture>(LipstickPicture.class),lid);
		return lipstickpictureList;
	}
	/**
	 * 查找某个口红的主图
	 * @param lid
	 * @return
	 * @throws SQLException
	 */
	public LipstickPicture findMainPictureByLid(String lid) throws SQLException {
		String sql = "SELECT * FROM tb_lipstickpicture where lid=? and ismain=1	";
		LipstickPicture lipstickpicture = qr.query(sql, new BeanHandler<LipstickPicture>(LipstickPicture.class),lid);
		return lipstickpicture;
	}
	/**
	 * 删除一张图片
	 * @param bid
	 * @throws SQLException
	 */
	public void delete(String lpid) throws SQLException{
		String sql = "DELETE FROM tb_lipstickpicture WHERE lpid=?";
		qr.update(sql, lpid);
	}
	/**
	 * 删除一个口红的所有图片
	 * @param lid
	 * @throws SQLException
	 */
	public void deleteByLid(String lid) throws SQLException{
		String sql = "DELETE FROM tb_lipstickpicture WHERE lid=?";
		qr.update(sql, lid);
	}
}
