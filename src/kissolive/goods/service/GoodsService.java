package kissolive.goods.service;

import java.sql.SQLException;
import java.util.List;

import kissolive.goods.dao.GoodsDao;
import kissolive.goods.domain.Goods;

public class GoodsService {
	private GoodsDao goodsDao = new GoodsDao();
	
	public List<Goods> findByLid(String lid){
		try {
			return goodsDao.findByLid(lid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public Goods findByGid(String gid){
		try {
			return goodsDao.findByGid(gid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public List<Goods> findByLid1(String lid){
		try {
			return goodsDao.findByLid1(lid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public List<Goods> findByCnid(String cnid){
		try {
			return goodsDao.findByCnid(cnid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void add(Goods goods){
		try {
			goodsDao.add(goods);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public List<Goods> findByLidAndCnid(String lid,String cnid){
		try {
			return goodsDao.findByLidAndCnid(lid, cnid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void updateStatusByGid(String gid,int status){
		try {
			goodsDao.updateStatusByGid(gid, status);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void update(String gid,int gnumber,double gprice){
		try {
			goodsDao.update(gid, gnumber, gprice);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
