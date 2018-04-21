package kissolive.shuffling.domain;

public class Shuffling {
	public Shuffling() {
		super();
	}

	private String src;
	private int orderBy;
	public Shuffling(String src, int orderBy) {
		super();
		this.src = src;
		this.orderBy = orderBy;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	public int getOrderBy() {
		return orderBy;
	}
	public void setOrderBy(int orderBy) {
		this.orderBy = orderBy;
	}
	@Override
	public String toString() {
		return "Shuffling [src=" + src + ", orderBy=" + orderBy + "]";
	}

	
}
