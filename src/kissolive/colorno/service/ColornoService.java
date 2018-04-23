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
			throw new RuntimeException(e);
		}
	}
	
	public List<Colorno> find(){
		try {
			return colornoDao.find();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public Colorno findByCnid(String cnid){
		try {
			return colornoDao.findByCnid(cnid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void delete(String cnid){
		try {
			colornoDao.delete(cnid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
