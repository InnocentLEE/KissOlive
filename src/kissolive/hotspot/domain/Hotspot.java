package kissolive.hotspot.domain;

public class Hotspot {
	private String hid;
	private String hdescribe;
	public Hotspot() {
		super();
	}
	@Override
	public String toString() {
		return "Hotspot [hid=" + hid + ", hdescribe=" + hdescribe + "]";
	}
	public String getHid() {
		return hid;
	}
	public void setHid(String hid) {
		this.hid = hid;
	}
	public String getHdescribe() {
		return hdescribe;
	}
	public void setHdescribe(String hdescribe) {
		this.hdescribe = hdescribe;
	}
	public Hotspot(String hid, String hdescribe) {
		super();
		this.hid = hid;
		this.hdescribe = hdescribe;
	}
}
