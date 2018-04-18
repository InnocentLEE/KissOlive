package kissolive.brand.domain;

import java.util.List;

import kissolive.series.domain.Series;

public class BrandAndSeries {
	private Brand brand;
	private List<Series> seriesList;
	public BrandAndSeries() {
		super();
	}
	public BrandAndSeries(Brand brand, List<Series> seriesList) {
		super();
		this.brand = brand;
		this.seriesList = seriesList;
	}
	public Brand getBrand() {
		return brand;
	}
	public void setBrand(Brand brand) {
		this.brand = brand;
	}
	public List<Series> getSeriesList() {
		return seriesList;
	}
	public void setSeriesList(List<Series> seriesList) {
		this.seriesList = seriesList;
	}
	@Override
	public String toString() {
		return "BrandAndSeries [brand=" + brand + ", seriesList=" + seriesList
				+ "]";
	}
	
		
}
