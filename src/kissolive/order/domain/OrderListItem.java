package kissolive.order.domain;

import java.util.List;

import kissolive.orderitem.domain.ViewOrderItem;

public class OrderListItem {
	private String oid;
	private List<ViewOrderItem> viewOrderItemList;
	private double totalprice;
	public OrderListItem() {
		super();
	}
	public OrderListItem(String oid, List<ViewOrderItem> viewOrderItemList,
			double totalprice) {
		super();
		this.oid = oid;
		this.viewOrderItemList = viewOrderItemList;
		this.totalprice = totalprice;
	}
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public List<ViewOrderItem> getViewOrderItemList() {
		return viewOrderItemList;
	}
	public void setViewOrderItemList(List<ViewOrderItem> viewOrderItemList) {
		this.viewOrderItemList = viewOrderItemList;
	}
	public double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
	@Override
	public String toString() {
		return "OrderListItem [oid=" + oid + ", viewOrderItemList="
				+ viewOrderItemList + ", totalprice=" + totalprice + "]";
	}
	
}
