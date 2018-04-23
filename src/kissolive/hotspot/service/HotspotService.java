package kissolive.hotspot.service;

import java.sql.SQLException;
import java.util.List;

import kissolive.hotspot.dao.HotspotDao;
import kissolive.hotspot.domain.Hotspot;

public class HotspotService {
	private HotspotDao hotspotDao  = new HotspotDao();
	
	public Hotspot findByHid(String hid){
		try {
			return hotspotDao.findByHid(hid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public List<Hotspot> find(){
		try {
			return hotspotDao.find();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void add(Hotspot hotspot){
		try {
			hotspotDao.add(hotspot);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void delete(String hid){
		try {
			hotspotDao.delete(hid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
