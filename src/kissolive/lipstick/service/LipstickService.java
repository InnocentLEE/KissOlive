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
			throw new RuntimeException(e);
		}
	}
	
	public List<Lipstick> findBySid(String sid){
		try {
			return lipstickDao.findBySid(sid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public List<Lipstick> findByHid(String hid){
		try {
			return lipstickDao.findByHid(hid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public List<Lipstick> find(){
		try {
			return lipstickDao.find();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void add(Lipstick lipstick){
		try {
			lipstickDao.add(lipstick);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public Lipstick findByLid(String lid){
		try {
			return lipstickDao.findByLid(lid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void delete(String lid){
		try {
			lipstickDao.delete(lid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
