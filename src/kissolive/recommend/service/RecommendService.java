package kissolive.recommend.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kissolive.brand.dao.BrandDao;
import kissolive.lipstick.dao.LipstickDao;
import kissolive.lipstickpicture.dao.LipstickPictureDao;
import kissolive.recommend.dao.RecommendDao;
import kissolive.recommend.domain.Recommend;
import kissolive.recommend.domain.RecommendResult;
import kissolive.series.dao.SeriesDao;

public class RecommendService {
	private RecommendDao recommendDao = new RecommendDao();
	private BrandDao brandDao = new BrandDao();
	private SeriesDao seriesDao = new SeriesDao();
	private LipstickDao lipstickDao = new LipstickDao();
	private LipstickPictureDao lipstickpictureDao = new LipstickPictureDao();
	
	
	public List<RecommendResult> findLast2(){
		try {
			List<Recommend> recommendList = recommendDao.find();
			if(recommendList.size()>=2){
				Recommend recommend1 = recommendList.get(0);
				Recommend recommend2 = recommendList.get(1);
				RecommendResult recommendResult1 = new RecommendResult();
				recommendResult1.setBrand(brandDao.findByBid(recommend1.getBid()));
				recommendResult1.setSeries1(seriesDao.findBySid(recommend1.getSid1()));
				recommendResult1.setSeries2(seriesDao.findBySid(recommend1.getSid2()));
				recommendResult1.setLipstick(lipstickDao.findByLid(recommend1.getLid()));
				recommendResult1.setLipstickpicture(lipstickpictureDao.findMainPictureByLid(recommend1.getLid()));
				RecommendResult recommendResult2 = new RecommendResult();
				recommendResult2.setBrand(brandDao.findByBid(recommend2.getBid()));
				recommendResult2.setSeries1(seriesDao.findBySid(recommend2.getSid1()));
				recommendResult2.setSeries2(seriesDao.findBySid(recommend2.getSid2()));
				recommendResult2.setLipstick(lipstickDao.findByLid(recommend2.getLid()));
				recommendResult2.setLipstickpicture(lipstickpictureDao.findMainPictureByLid(recommend2.getLid()));
				List<RecommendResult> recommendResultList = new ArrayList<RecommendResult>();
				recommendResultList.add(recommendResult1);
				recommendResultList.add(recommendResult2);
				return recommendResultList;
				
			}
		} catch (SQLException e) {
			throw new RuntimeException();
		}
		return null;
	}
	public List<Recommend> findByBid(String bid){
		try {
			return recommendDao.findByBid(bid);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	public List<Recommend> findByLid(String lid){
		try {
			return recommendDao.findByBid(lid);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
	public List<Recommend> findBySid(String sid){
		try {
			return recommendDao.findByBid(sid);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
}
