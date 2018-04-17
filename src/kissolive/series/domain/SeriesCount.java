package kissolive.series.domain;

public class SeriesCount {
	private Series series;
	private int count;
	public SeriesCount() {
		super();
	}
	public SeriesCount(Series series, int count) {
		super();
		this.series = series;
		this.count = count;
	}
	public Series getSeries() {
		return series;
	}
	public void setSeries(Series series) {
		this.series = series;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "SeriesCount [series=" + series + ", count=" + count + "]";
	}
	
}
