package kissolive.address.dao;

import java.sql.SQLException;
import java.util.List;

import kissolive.address.domain.Address;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

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
		Object[] params = {address.getAid(),address.getUserid(),address.getIsdefault(),address.getProvince(),address.getCity(),address.getDistrict(),address.getDetail(),address.getName(),address.getTel()};
		qr.update(sql, params);
	}
	
	/**
	 * 查找用户的收货地址
	 * @param userid
	 * @return
	 * @throws SQLException
	 */
	public List<Address> findByUser(String userid) throws SQLException{
		String sql = "select * from tb_address where userid=? order by orderBy";
		List<Address> addressList = qr.query(sql, new BeanListHandler<Address>(Address.class), userid);
		//System.out.println(addressList);
		return addressList;
	}
}
