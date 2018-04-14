package kissolive.series.domain;

public class Series {
	private String sid;
	private String bid;
	private String sname;
	private String ssrc;
	public Series() {
		super();
	}
	public Series(String sid, String bid, String sname, String ssrc) {
		super();
		this.sid = sid;
		this.bid = bid;
		this.sname = sname;
		this.ssrc = ssrc;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
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
		return "DBSeries [sid=" + sid + ", bid=" + bid + ", sname=" + sname
				+ ", ssrc=" + ssrc + "]";
	}
	
}
