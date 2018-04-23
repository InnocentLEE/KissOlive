package kissolive.lipstickpicture.service;

import java.sql.SQLException;

import kissolive.lipstickpicture.dao.LipstickPictureDao;
import kissolive.lipstickpicture.domain.LipstickPicture;

public class LipstickPictureService {
	private LipstickPictureDao lipstickPictureDao = new LipstickPictureDao();
	
	public LipstickPicture findMainPictureByLid(String lid){
		try {
			return lipstickPictureDao.findMainPictureByLid(lid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public LipstickPicture findPictureByLid(String lid){
		try {
			return lipstickPictureDao.findPictureByLid(lid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void add(LipstickPicture lipstickpicture){
		try {
			lipstickPictureDao.add(lipstickpicture);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void deleteByLid(String lid){
		try {
			lipstickPictureDao.deleteByLid(lid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
