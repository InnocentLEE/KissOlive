package kissolive.colorno.service;

import java.sql.SQLException;
import java.util.List;

import kissolive.colorno.dao.ColornoDao;
import kissolive.colorno.domain.Colorno;

public class ColornoService {
	private ColornoDao colornoDao = new ColornoDao();
	
	public void addColor(Colorno colorno){
		try {
			colornoDao.add(colorno);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	public List<Colorno> find(){
		try {
			return colornoDao.find();
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	public void delete(String cnid){
		try {
			colornoDao.delete(cnid);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
}
