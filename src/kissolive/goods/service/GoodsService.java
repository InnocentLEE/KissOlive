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
			throw new RuntimeException();
		}
	}
	public List<Goods> findByCnid(String cnid){
		try {
			return goodsDao.findByCnid(cnid);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
}
