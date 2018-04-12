package kissolive.goods.domain;

import kissolive.colorno.domain.Colorno;
import kissolive.lipstick.domain.Lipstick;

public class Goods {
	public Goods() {
		super();
	}
	private String gid;
	private Lipstick lipstick;
	private Colorno colorno;
	private double gprice;
	private int gnumber;
	private int status;
	public Goods(String gid, Lipstick lipstick, Colorno colorno, double gprice,
			int gnumber, int status) {
		super();
		this.gid = gid;
		this.lipstick = lipstick;
		this.colorno = colorno;
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
	public Lipstick getLipstick() {
		return lipstick;
	}
	public void setLipstick(Lipstick lipstick) {
		this.lipstick = lipstick;
	}
	public Colorno getColorno() {
		return colorno;
	}
	public void setColorno(Colorno colorno) {
		this.colorno = colorno;
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
		return "Goods [gid=" + gid + ", lipstick=" + lipstick + ", colorno="
				+ colorno + ", gprice=" + gprice + ", gnumber=" + gnumber
				+ ", status=" + status + "]";
	}
	
}
