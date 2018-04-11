package kissolive.brand.domain;

public class Brand {
	private String bid;
	private String bname;
	private String bsrc;
	
	public Brand(String bid, String bname, String bsrc) {
		super();
		this.bid = bid;
		this.bname = bname;
		this.bsrc = bsrc;
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getBsrc() {
		return bsrc;
	}

	public void setBsrc(String bsrc) {
		this.bsrc = bsrc;
	}

	@Override
	public String toString() {
		return "Brand [bid=" + bid + ", bname=" + bname + ", bsrc=" + bsrc
				+ "]";
	}
	
}
