package kissolive.user.domain;

public class User {
	private String userid;//用户id
	private String password;//用户密码
	private String username;//用户名
	private String usertel;//用户手机号
	public User(String userid, String password, String username, String usertel) {
		super();
		this.userid = userid;
		this.password = password;
		this.username = username;
		this.usertel = usertel;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsertel() {
		return usertel;
	}
	public void setUsertel(String usertel) {
		this.usertel = usertel;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", password=" + password
				+ ", username=" + username + ", usertel=" + usertel + "]";
	}
	
}
