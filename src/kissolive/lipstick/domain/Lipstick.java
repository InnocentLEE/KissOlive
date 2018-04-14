package kissolive.lipstick.domain;


public class Lipstick {
	public Lipstick() {
		super();
	}
	private String lid;
	private String sid;
	private String hid;
	private String lname;
	private String lorigin;
	private int shelflife;
	private String skin;
	public Lipstick(String lid, String sid, String hid, String lname,
			String lorigin, int shelflife, String skin) {
		super();
		this.lid = lid;
		this.sid = sid;
		this.hid = hid;
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
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getHid() {
		return hid;
	}
	public void setHid(String hid) {
		this.hid = hid;
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
	public int getShelflife() {
		return shelflife;
	}
	public void setShelflife(int shelflife) {
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
		return "Lipstick [lid=" + lid + ", sid=" + sid + ", hid=" + hid
				+ ", lname=" + lname + ", lorigin=" + lorigin + ", shelflife="
				+ shelflife + ", skin=" + skin + "]";
	}
	
	
}
