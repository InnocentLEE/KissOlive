package kissolive.brand.service;

import java.sql.SQLException;

import kissolive.brand.dao.BrandDao;
import kissolive.brand.domain.Brand;

public class BrandService {
	private BrandDao brandDao = new BrandDao();
	/**
	 * 添加品牌
	 * @param brand
	 */
	public void addBrand(Brand brand){
		try {
			brandDao.add(brand);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
}
