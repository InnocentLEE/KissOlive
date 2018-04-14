package kissolive.goods.domain;


public class Goods {
	public Goods() {
		super();
	}
	private String gid;
	private String lid;
	private String cnid;
	private double gprice;
	private int gnumber;
	private int status;
	public Goods(String gid, String lid, String cnid, double gprice,
			int gnumber, int status) {
		super();
		this.gid = gid;
		this.lid = lid;
		this.cnid = cnid;
		this.gprice = gprice;
		this.gnumber = gnumber;
		this.status = status;
	}
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	public String getLid() {
		return lid;
	}
	public void setLid(String lid) {
		this.lid = lid;
	}
	public String getCnid() {
		return cnid;
	}
	public void setCnid(String cnid) {
		this.cnid = cnid;
	}
	public double getGprice() {
		return gprice;
	}
	public void setGprice(double gprice) {
		this.gprice = gprice;
	}
	public int getGnumber() {
		return gnumber;
	}
	public void setGnumber(int gnumber) {
		this.gnumber = gnumber;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Goods [gid=" + gid + ", lid=" + lid + ", cnid=" + cnid
				+ ", gprice=" + gprice + ", gnumber=" + gnumber + ", status="
				+ status + "]";
	}
	
}
