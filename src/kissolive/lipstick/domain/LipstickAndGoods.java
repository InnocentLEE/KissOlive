package kissolive.lipstick.domain;

import java.util.List;

import kissolive.goods.domain.GoodsAndColorno;

public class LipstickAndGoods {
	private Lipstick lipstick;
	private String mainsrc;
	private List<GoodsAndColorno> goodsAndColornoList;
	public LipstickAndGoods() {
		super();
	}
	public LipstickAndGoods(Lipstick lipstick, String mainsrc,
			List<GoodsAndColorno> goodsAndColornoList) {
		super();
		this.lipstick = lipstick;
		this.mainsrc = mainsrc;
		this.goodsAndColornoList = goodsAndColornoList;
	}
	public Lipstick getLipstick() {
		return lipstick;
	}
	public void setLipstick(Lipstick lipstick) {
		this.lipstick = lipstick;
	}
	public String getMainsrc() {
		return mainsrc;
	}
	public void setMainsrc(String mainsrc) {
		this.mainsrc = mainsrc;
	}
	public List<GoodsAndColorno> getGoodsAndColornoList() {
		return goodsAndColornoList;
	}
	public void setGoodsAndColornoList(List<GoodsAndColorno> goodsAndColornoList) {
		this.goodsAndColornoList = goodsAndColornoList;
	}
	@Override
	public String toString() {
		return "LipstickAndGoods [lipstick=" + lipstick + ", mainsrc="
				+ mainsrc + ", goodsAndColornoList=" + goodsAndColornoList
				+ "]";
	}
	
}
