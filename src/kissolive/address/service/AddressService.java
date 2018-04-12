package kissolive.address.service;

import java.sql.SQLException;

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
	 */
	public void findByUser(String suerid){
		try {
			addressDao.findByUser(suerid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
