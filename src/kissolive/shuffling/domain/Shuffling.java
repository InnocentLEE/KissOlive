package kissolive.shuffling.domain;

public class Shuffling {
	public Shuffling() {
		super();
	}

	private String src;

	public Shuffling(String src) {
		super();
		this.src = src;
	}

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	@Override
	public String toString() {
		return "Shuffling [src=" + src + "]";
	}
	
}
