package kissolive.orderitem.domain;

import kissolive.goods.domain.Goods;
import kissolive.order.domain.Order;

public class OrderItem {
	public OrderItem() {
		super();
	}
	private String oiid;
	private Order order;
	private Goods goods;
	private int number;
	private double unitprice;
	public OrderItem(String oiid, Order order, Goods goods, int number,
			double unitprice) {
		super();
		this.oiid = oiid;
		this.order = order;
		this.goods = goods;
		this.number = number;
		this.unitprice = unitprice;
	}
	public String getOiid() {
		return oiid;
	}
	public void setOiid(String oiid) {
		this.oiid = oiid;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
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
	public double getUnitprice() {
		return unitprice;
	}
	public void setUnitprice(double unitprice) {
		this.unitprice = unitprice;
	}
	@Override
	public String toString() {
		return "OrderItem [oiid=" + oiid + ", order=" + order + ", goods="
				+ goods + ", number=" + number + ", unitprice=" + unitprice
				+ "]";
	}
}
