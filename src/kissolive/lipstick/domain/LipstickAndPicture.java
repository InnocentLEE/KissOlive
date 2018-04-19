package kissolive.lipstick.domain;

public class LipstickAndPicture {
	private Lipstick lipstick;
	private String mainsrc;
	private String detailsrc;
	public LipstickAndPicture() {
		super();
	}
	public LipstickAndPicture(Lipstick lipstick, String mainsrc,
			String detailsrc) {
		super();
		this.lipstick = lipstick;
		this.mainsrc = mainsrc;
		this.detailsrc = detailsrc;
	}
	public Lipstick getLipstick() {
		return lipstick;
	}
	public void setLipstick(Lipstick lipstick) {
		this.lipstick = lipstick;
	}
	public String getMainsrc() {
		return mainsrc;
	}
	public void setMainsrc(String mainsrc) {
		this.mainsrc = mainsrc;
	}
	public String getDetailsrc() {
		return detailsrc;
	}
	public void setDetailsrc(String detailsrc) {
		this.detailsrc = detailsrc;
	}
	@Override
	public String toString() {
		return "LipstickAndPicture [lipstick=" + lipstick + ", mainsrc="
				+ mainsrc + ", detailsrc=" + detailsrc + "]";
	}
	
}
