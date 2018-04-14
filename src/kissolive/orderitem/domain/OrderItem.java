package kissolive.orderitem.domain;


public class OrderItem {
	public OrderItem() {
		super();
	}
	private String oiid;
	private String oid;
	private String gid;
	private int number;
	private double unitprice;
	public OrderItem(String oiid, String oid, String gid, int number,
			double unitprice) {
		super();
		this.oiid = oiid;
		this.oid = oid;
		this.gid = gid;
		this.number = number;
		this.unitprice = unitprice;
	}
	public String getOiid() {
		return oiid;
	}
	public void setOiid(String oiid) {
		this.oiid = oiid;
	}
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public String getGid() {
		return gid;
	}
	public void setGid(String sid) {
		this.gid = sid;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public double getUnitprice() {
		return unitprice;
	}
	public void setUnitprice(double unitprice) {
		this.unitprice = unitprice;
	}
	@Override
	public String toString() {
		return "OrderItem [oiid=" + oiid + ", oid=" + oid + ", gid=" + gid
				+ ", number=" + number + ", unitprice=" + unitprice + "]";
	}
	
}
