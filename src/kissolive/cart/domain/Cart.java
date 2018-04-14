package kissolive.cart.domain;


public class Cart {
	public Cart() {
		super();
	}
	private String cid;
	private String userid;
	private String gid;
	private int number;
	public Cart(String cid, String userid, String gid, int number) {
		super();
		this.cid = cid;
		this.userid = userid;
		this.gid = gid;
		this.number = number;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	@Override
	public String toString() {
		return "Cart [cid=" + cid + ", userid=" + userid + ", gid=" + gid
				+ ", number=" + number + "]";
	}
	
	
}
