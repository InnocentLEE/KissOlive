package kissolive.cart.domain;

public class CartItem {
	private Cart cart;
	private String mainsrc;
	private String lname;
	private String cncode;
	private double gprice;
	private double totalprice;
	private int number;
	public CartItem() {
		super();
	}
	public CartItem(Cart cart, String mainsrc, String lname, String cncode,
			double gprice, double totalprice, int number) {
		super();
		this.cart = cart;
		this.mainsrc = mainsrc;
		this.lname = lname;
		this.cncode = cncode;
		this.gprice = gprice;
		this.totalprice = totalprice;
		this.number = number;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public String getMainsrc() {
		return mainsrc;
	}
	public void setMainsrc(String mainsrc) {
		this.mainsrc = mainsrc;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getCncode() {
		return cncode;
	}
	public void setCncode(String cncode) {
		this.cncode = cncode;
	}
	public double getGprice() {
		return gprice;
	}
	public void setGprice(double gprice) {
		this.gprice = gprice;
	}
	public double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	@Override
	public String toString() {
		return "CartItem [cart=" + cart + ", mainsrc=" + mainsrc + ", lname="
				+ lname + ", cncode=" + cncode + ", gprice=" + gprice
				+ ", totalprice=" + totalprice + ", number=" + number + "]";
	}
	
}
