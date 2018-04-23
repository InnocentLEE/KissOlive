package kissolive.shuffling.service;

import java.sql.SQLException;
import java.util.List;

import kissolive.shuffling.dao.ShufflingDao;
import kissolive.shuffling.domain.Shuffling;

public class ShufflingService {
	private ShufflingDao shufflingDao = new ShufflingDao();
	
	public List<Shuffling> findLast5(){
		try {
			List<Shuffling> resultList = shufflingDao.find();
			if(resultList.size()<=5){
				return resultList;
			}else{
				return resultList.subList(0, 5);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public Shuffling findByOrderBy(int orderBy){
		try {
			return shufflingDao.findByOrderBy(orderBy);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void update(String src,int orderBy){
		try {
			shufflingDao.update(src, orderBy);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
