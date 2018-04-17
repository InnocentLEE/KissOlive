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
			throw new RuntimeException();
		}
	}
	public List<Hotspot> find(){
		try {
			return hotspotDao.find();
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	public void add(Hotspot hotspot){
		try {
			hotspotDao.add(hotspot);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
}
