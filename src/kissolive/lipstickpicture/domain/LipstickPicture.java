package kissolive.lipstickpicture.domain;


public class LipstickPicture {
	public LipstickPicture() {
		super();
	}
	private String lpid;
	private String lid;
	private String lpsrc;
	private int ismain;
	public LipstickPicture(String lpid, String lid, String lpsrc, int ismain) {
		super();
		this.lpid = lpid;
		this.lid = lid;
		this.lpsrc = lpsrc;
		this.ismain = ismain;
	}
	public String getLpid() {
		return lpid;
	}
	public void setLpid(String lpid) {
		this.lpid = lpid;
	}
	public String getLid() {
		return lid;
	}
	public void setLid(String lid) {
		this.lid = lid;
	}
	public String getLpsrc() {
		return lpsrc;
	}
	public void setLpsrc(String lpsrc) {
		this.lpsrc = lpsrc;
	}
	public int getIsmain() {
		return ismain;
	}
	public void setIsmain(int ismain) {
		this.ismain = ismain;
	}
	@Override
	public String toString() {
		return "LipstickPicture [lpid=" + lpid + ", lid=" + lid + ", lpsrc="
				+ lpsrc + ", ismain=" + ismain + "]";
	}
	
	
}
