package kissolive.address.service;

import java.sql.SQLException;
import java.util.List;

import org.junit.Test;

import kissolive.address.dao.AddressDao;
import kissolive.address.domain.Address;

public class AddressService {
	private AddressDao addressDao = new AddressDao();
	/**
	 * 添加一个收货地址
	 * @param address
	 */
	public void addAddress(Address address){
		try {
			addressDao.addAddress(address);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	/**
	 * 查找用户的全部收货地址
	 * @param suerid
	 * @return 
	 */
	public List<Address> findByUser(String userid){
		try {
			return addressDao.findByUser(userid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public Address findByAid(String aid){
		try {
			return addressDao.findByAid(aid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
