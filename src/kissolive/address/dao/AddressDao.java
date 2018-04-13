package kissolive.address.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import kissolive.address.domain.Address;
import kissolive.user.domain.User;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;

import util.CommonUtils;
import util.TxQueryRunner;

public class AddressDao {
	private QueryRunner qr = new TxQueryRunner();
	/**
	 * 添加一个收货地址
	 * @param address
	 * @throws SQLException
	 */
	public void addAddress(Address address) throws SQLException{
		String sql = "insert into tb_address(aid,userid,isdefault,province,city,district,detail,name,tel) values(?,?,?,?,?,?,?,?,?)";
		Object[] params = {address.getAid(),address.getUser().getUserid(),address.getIsdefault(),address.getProvince(),address.getCity(),address.getDistrict(),address.getDetail(),address.getName(),address.getTel()};
		qr.update(sql, params);
	}
	
	/*
	 * 把一个Map映射成一个Address
	 */
	private Address toAddress(Map<String,Object> map) {
		if(map == null || map.size() == 0) return null;
		Address address = CommonUtils.toBean(map, Address.class);
		User user = CommonUtils.toBean(map, User.class);
		address.setUser(user);
		return address;
	}
	
	/*
	 * 把多个Map(List<Map>)映射成多个Address(List<Address>)
	 */
	private List<Address> toAddressList(List<Map<String,Object>> mapList) {
		List<Address> addressList = new ArrayList<Address>();
		for(Map<String,Object> map : mapList) {
			Address address = toAddress(map);
			addressList.add(address);
		}
		return addressList;
	}
	/**
	 * 查找用户的收货地址
	 * @param userid
	 * @return
	 * @throws SQLException
	 */
	public List<Address> findByUser(String userid) throws SQLException{
		String sql = "select * from tb_address a, tb_user u where a.userid=u.userid and a.userid=? order by a.orderBy";
		List<Map<String,Object>> mapList = qr.query(sql, new MapListHandler(), userid);
		List<Address> addressList = toAddressList(mapList);
		System.out.println(addressList);
		return addressList;
	}
}
