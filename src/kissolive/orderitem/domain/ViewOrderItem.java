package kissolive.orderitem.domain;

public class ViewOrderItem {
	private String oiid;
	private String lname;
	private String cncode;
	private int number;
	private double totalprice;
	public ViewOrderItem() {
		super();
	}
	public ViewOrderItem(String oiid, String lname, String cncode, int number,
			double totalprice) {
		super();
		this.oiid = oiid;
		this.lname = lname;
		this.cncode = cncode;
		this.number = number;
		this.totalprice = totalprice;
	}
	public String getOiid() {
		return oiid;
	}
	public void setOiid(String oiid) {
		this.oiid = oiid;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getCncode() {
		return cncode;
	}
	public void setCncode(String cncode) {
		this.cncode = cncode;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
	@Override
	public String toString() {
		return "ViewOrderItem [oiid=" + oiid + ", lname=" + lname + ", cncode="
				+ cncode + ", number=" + number + ", totalprice=" + totalprice
				+ "]";
	}
	
}
