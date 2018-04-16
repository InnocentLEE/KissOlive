package kissolive.recommend.domain;

import kissolive.brand.domain.Brand;
import kissolive.goods.domain.Goods;
import kissolive.lipstick.domain.Lipstick;
import kissolive.lipstickpicture.domain.LipstickPicture;
import kissolive.series.domain.Series;

public class RecommendResult {
	private Brand brand;
	private Series series1;
	private Series series2;
	private Lipstick lipstick;
	private LipstickPicture lipstickpicture;
	public RecommendResult() {
		super();
	}
	public RecommendResult(Brand brand, Series series1, Series series2,
			Lipstick lipstick, LipstickPicture lipstickpicture) {
		super();
		this.brand = brand;
		this.series1 = series1;
		this.series2 = series2;
		this.lipstick = lipstick;
		this.lipstickpicture = lipstickpicture;
	}
	public Brand getBrand() {
		return brand;
	}
	public void setBrand(Brand brand) {
		this.brand = brand;
	}
	public Series getSeries1() {
		return series1;
	}
	public void setSeries1(Series series1) {
		this.series1 = series1;
	}
	public Series getSeries2() {
		return series2;
	}
	public void setSeries2(Series series2) {
		this.series2 = series2;
	}
	public Lipstick getLipstick() {
		return lipstick;
	}
	public void setLipstick(Lipstick lipstick) {
		this.lipstick = lipstick;
	}
	public LipstickPicture getLipstickpicture() {
		return lipstickpicture;
	}
	public void setLipstickpicture(LipstickPicture lipstickpicture) {
		this.lipstickpicture = lipstickpicture;
	}
	@Override
	public String toString() {
		return "RecommendResult [brand=" + brand + ", series1=" + series1
				+ ", series2=" + series2 + ", lipstick=" + lipstick
				+ ", lipstickpicture=" + lipstickpicture + "]";
	}
	
	
}
