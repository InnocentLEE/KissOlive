package kissolive.colorno.domain;

public class Colorno {
	public Colorno() {
		super();
	}
	private String cnid;
	private String cncode;
	private String cnRGB;
	public Colorno(String cnid, String cncode, String cnRGB) {
		super();
		this.cnid = cnid;
		this.cncode = cncode;
		this.cnRGB = cnRGB;
	}
	public String getCnid() {
		return cnid;
	}
	public void setCnid(String cnid) {
		this.cnid = cnid;
	}
	public String getCncode() {
		return cncode;
	}
	public void setCncode(String cncode) {
		this.cncode = cncode;
	}
	public String getCnRGB() {
		return cnRGB;
	}
	public void setCnRGB(String cnRGB) {
		this.cnRGB = cnRGB;
	}
	@Override
	public String toString() {
		return "Colorno [cnid=" + cnid + ", cncode=" + cncode + ", cnRGB="
				+ cnRGB + "]";
	}
	
}
