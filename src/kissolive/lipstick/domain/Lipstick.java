package kissolive.lipstick.domain;

import kissolive.hotspot.domain.Hotspot;
import kissolive.series.domain.Series;

public class Lipstick {
	private String lid;
	private Series series;
	private Hotspot hotspot;
	private String lname;
	private String lorigin;
	private String shelflife;
	private String skin;
	public Lipstick(String lid, Series series, Hotspot hotspot, String lname,
			String lorigin, String shelflife, String skin) {
		super();
		this.lid = lid;
		this.series = series;
		this.hotspot = hotspot;
		this.lname = lname;
		this.lorigin = lorigin;
		this.shelflife = shelflife;
		this.skin = skin;
	}
	public String getLid() {
		return lid;
	}
	public void setLid(String lid) {
		this.lid = lid;
	}
	public Series getSeries() {
		return series;
	}
	public void setSeries(Series series) {
		this.series = series;
	}
	public Hotspot getHotspot() {
		return hotspot;
	}
	public void setHotspot(Hotspot hotspot) {
		this.hotspot = hotspot;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getLorigin() {
		return lorigin;
	}
	public void setLorigin(String lorigin) {
		this.lorigin = lorigin;
	}
	public String getShelflife() {
		return shelflife;
	}
	public void setShelflife(String shelflife) {
		this.shelflife = shelflife;
	}
	public String getSkin() {
		return skin;
	}
	public void setSkin(String skin) {
		this.skin = skin;
	}
	@Override
	public String toString() {
		return "Lipstick [lid=" + lid + ", series=" + series + ", hotspot="
				+ hotspot + ", lname=" + lname + ", lorigin=" + lorigin
				+ ", shelflife=" + shelflife + ", skin=" + skin + "]";
	}
	
	
}
