package kissolive.cart.domain;

import kissolive.goods.domain.Goods;
import kissolive.user.domain.User;

public class Cart {
	public Cart() {
		super();
	}
	private String cid;
	private User user;
	private Goods goods;
	private int number;
	public Cart(String cid, User user, Goods goods, int number) {
		super();
		this.cid = cid;
		this.user = user;
		this.goods = goods;
		this.number = number;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	@Override
	public String toString() {
		return "Cart [cid=" + cid + ", user=" + user + ", goods=" + goods
				+ ", number=" + number + "]";
	}
	
}
