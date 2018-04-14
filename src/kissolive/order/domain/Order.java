package kissolive.order.domain;


public class Order {
	public Order() {
		super();
	}
	private String oid;
	private String userid;
	private int status;
	private String province;
	private String city;
	private String district;
	private String detail;
	private String name;
	private String tel;
	private String createtime;
	private String newtime;
	public Order(String oid, String userid, int status, String province,
			String city, String district, String detail, String name,
			String tel, String createtime, String newtime) {
		super();
		this.oid = oid;
		this.userid = userid;
		this.status = status;
		this.province = province;
		this.city = city;
		this.district = district;
		this.detail = detail;
		this.name = name;
		this.tel = tel;
		this.createtime = createtime;
		this.newtime = newtime;
	}
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public String getNewtime() {
		return newtime;
	}
	public void setNewtime(String newtime) {
		this.newtime = newtime;
	}
	@Override
	public String toString() {
		return "Order [oid=" + oid + ", userid=" + userid + ", status="
				+ status + ", province=" + province + ", city=" + city
				+ ", district=" + district + ", detail=" + detail + ", name="
				+ name + ", tel=" + tel + ", createtime=" + createtime
				+ ", newtime=" + newtime + "]";
	}
	
	
}
