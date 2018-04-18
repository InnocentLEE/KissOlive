package kissolive.series.service;

import java.sql.SQLException;
import java.util.List;

import kissolive.series.dao.SeriesDao;
import kissolive.series.domain.Series;

public class SeriesService {
	private SeriesDao seriesDao = new SeriesDao();
	
	public List<Series> findByBid(String bid){
		try {
			List<Series> seriesList = seriesDao.findByBid(bid);
			return seriesList;
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	
	public void add(Series series){
		try {
			seriesDao.add(series);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	public void delete(String sid){
		try {
			seriesDao.delete(sid);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
}
