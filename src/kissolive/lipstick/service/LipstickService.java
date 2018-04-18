package kissolive.lipstick.service;

import java.sql.SQLException;
import java.util.List;

import kissolive.lipstick.dao.LipstickDao;
import kissolive.lipstick.domain.Lipstick;

public class LipstickService {
	private LipstickDao lipstickDao = new LipstickDao();
	
	public int countBySid(String sid){
		try {
			return lipstickDao.countBySid(sid);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	public List<Lipstick> findBySid(String sid){
		try {
			return lipstickDao.findBySid(sid);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	public List<Lipstick> find(){
		try {
			return lipstickDao.find();
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
}
