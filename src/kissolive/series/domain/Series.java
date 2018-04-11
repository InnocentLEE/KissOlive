package kissolive.series.domain;

import kissolive.brand.domain.Brand;

public class Series {
	private String sid;
	private Brand brand;
	private String sname;
	private String ssrc;
	public Series(String sid, Brand brand, String sname, String ssrc) {
		super();
		this.sid = sid;
		this.brand = brand;
		this.sname = sname;
		this.ssrc = ssrc;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public Brand getBrand() {
		return brand;
	}
	public void setBrand(Brand brand) {
		this.brand = brand;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSsrc() {
		return ssrc;
	}
	public void setSsrc(String ssrc) {
		this.ssrc = ssrc;
	}
	@Override
	public String toString() {
		return "Series [sid=" + sid + ", brand=" + brand + ", sname=" + sname
				+ ", ssrc=" + ssrc + "]";
	}
	
}
