package kissolive.lipstickpicture.domain;

import kissolive.lipstick.domain.Lipstick;

public class LipstickPicture {
	private String lpid;
	private Lipstick lipstick;
	private String lpsrc;
	private String ismain;
	public LipstickPicture(String lpid, Lipstick lipstic, String lpsrc,
			String ismain) {
		super();
		this.lpid = lpid;
		this.lipstick = lipstic;
		this.lpsrc = lpsrc;
		this.ismain = ismain;
	}
	public String getLpid() {
		return lpid;
	}
	public void setLpid(String lpid) {
		this.lpid = lpid;
	}
	public Lipstick getLipstic() {
		return lipstick;
	}
	public void setLipstic(Lipstick lipstic) {
		this.lipstick = lipstic;
	}
	public String getLpsrc() {
		return lpsrc;
	}
	public void setLpsrc(String lpsrc) {
		this.lpsrc = lpsrc;
	}
	public String getIsmain() {
		return ismain;
	}
	public void setIsmain(String ismain) {
		this.ismain = ismain;
	}
	@Override
	public String toString() {
		return "LipstickPicture [lpid=" + lpid + ", lipstic=" + lipstick
				+ ", lpsrc=" + lpsrc + ", ismain=" + ismain + "]";
	}
	
}
