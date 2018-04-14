package kissolive.address.domain;


public class Address {
	private String aid;
	private String userid;
	private String province;
	private int isdefault;
	private String city;
	private String district;
	private String detail;
	private String name;
	private String tel;

	public Address() {
		super();
	}

	public Address(String aid, String userid, String province, int isdefault,
			String city, String district, String detail, String name, String tel) {
		super();
		this.aid = aid;
		this.userid = userid;
		this.province = province;
		this.isdefault = isdefault;
		this.city = city;
		this.district = district;
		this.detail = detail;
		this.name = name;
		this.tel = tel;
	}

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public int getIsdefault() {
		return isdefault;
	}

	public void setIsdefault(int isdefault) {
		this.isdefault = isdefault;
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

	@Override
	public String toString() {
		return "Address [aid=" + aid + ", userid=" + userid + ", province="
				+ province + ", isdefault=" + isdefault + ", city=" + city
				+ ", district=" + district + ", detail=" + detail + ", name="
				+ name + ", tel=" + tel + "]";
	}

	
}
