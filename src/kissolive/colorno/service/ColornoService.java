package kissolive.colorno.service;

import java.sql.SQLException;

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
}
