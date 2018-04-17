package kissolive.lipstick.domain;

public class LipstickAvgPrice {
	private Lipstick lipstick;
	private double avgprice;
	private String hotspot;
	private String lsrc;
	public LipstickAvgPrice() {
		super();
	}
	public LipstickAvgPrice(Lipstick lipstick, double avgprice, String hotspot,
			String lsrc) {
		super();
		this.lipstick = lipstick;
		this.avgprice = avgprice;
		this.hotspot = hotspot;
		this.lsrc = lsrc;
	}
	public Lipstick getLipstick() {
		return lipstick;
	}
	public void setLipstick(Lipstick lipstick) {
		this.lipstick = lipstick;
	}
	public double getAvgprice() {
		return avgprice;
	}
	public void setAvgprice(double avgprice) {
		this.avgprice = avgprice;
	}
	public String getHotspot() {
		return hotspot;
	}
	public void setHotspot(String hotspot) {
		this.hotspot = hotspot;
	}
	public String getLsrc() {
		return lsrc;
	}
	public void setLsrc(String lsrc) {
		this.lsrc = lsrc;
	}
	@Override
	public String toString() {
		return "LipstickAvgPrice [lipstick=" + lipstick + ", avgprice="
				+ avgprice + ", hotspot=" + hotspot + ", lsrc=" + lsrc + "]";
	}
	
	
	
}
