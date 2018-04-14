package kissolive.recommend.domain;

import kissolive.brand.domain.Brand;
import kissolive.goods.domain.Goods;
import kissolive.series.domain.Series;

public class Recommend {
	public Recommend() {
		super();
	}
	private Goods goods;
	private Brand brand;
	private Series series1;
	private Series series2;
	public Recommend(Goods goods, Brand brand, Series series1, Series series2) {
		super();
		this.goods = goods;
		this.brand = brand;
		this.series1 = series1;
		this.series2 = series2;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
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
	@Override
	public String toString() {
		return "Recommend [goods=" + goods + ", brand=" + brand + ", series1="
				+ series1 + ", series2=" + series2 + "]";
	}
	
	
}
