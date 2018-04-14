package kissolive.recommend.domain;

public class Recommend {
	private String bid;
	private String sid1;
	private String sid2;
	private String gid;
	public Recommend() {
		super();
	}
	public Recommend(String bid, String sid1, String sid2, String gid) {
		super();
		this.bid = bid;
		this.sid1 = sid1;
		this.sid2 = sid2;
		this.gid = gid;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getSid1() {
		return sid1;
	}
	public void setSid1(String sid1) {
		this.sid1 = sid1;
	}
	public String getSid2() {
		return sid2;
	}
	public void setSid2(String sid2) {
		this.sid2 = sid2;
	}
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	@Override
	public String toString() {
		return "DBRecommend [bid=" + bid + ", sid1=" + sid1 + ", sid2=" + sid2
				+ ", gid=" + gid + "]";
	}
	
}
