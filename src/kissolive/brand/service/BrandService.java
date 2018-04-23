package kissolive.brand.service;

import java.sql.SQLException;
import java.util.List;

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
			throw new RuntimeException(e);
		}
	}
	public List<Brand> find(){
		try {
			List<Brand> brandList= brandDao.find();
			return brandList;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public boolean findByBid(String bid){
		try {
			return brandDao.findByBid(bid)==null;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public Brand findByBid1(String bid){
		try {
			return brandDao.findByBid(bid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void deteleByBid(String bid){
		try {
			brandDao.delete(bid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
