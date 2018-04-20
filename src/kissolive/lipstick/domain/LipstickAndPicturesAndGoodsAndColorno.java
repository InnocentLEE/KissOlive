package kissolive.lipstick.domain;

import java.util.List;

import kissolive.goods.domain.GoodsAndColorno;
import kissolive.lipstickpicture.domain.LipstickPicture;

public class LipstickAndPicturesAndGoodsAndColorno {
	private Lipstick lipstick;
	private LipstickPicture mainPicture;
	private LipstickPicture detailPicture;
	private List<GoodsAndColorno> goodsAndColornoList;
	public LipstickAndPicturesAndGoodsAndColorno() {
		super();
	}
	public LipstickAndPicturesAndGoodsAndColorno(Lipstick lipstick,
			LipstickPicture mainPicture, LipstickPicture detailPicture,
			List<GoodsAndColorno> goodsAndColornoList) {
		super();
		this.lipstick = lipstick;
		this.mainPicture = mainPicture;
		this.detailPicture = detailPicture;
		this.goodsAndColornoList = goodsAndColornoList;
	}
	public Lipstick getLipstick() {
		return lipstick;
	}
	public void setLipstick(Lipstick lipstick) {
		this.lipstick = lipstick;
	}
	public LipstickPicture getMainPicture() {
		return mainPicture;
	}
	public void setMainPicture(LipstickPicture mainPicture) {
		this.mainPicture = mainPicture;
	}
	public LipstickPicture getDetailPicture() {
		return detailPicture;
	}
	public void setDetailPicture(LipstickPicture detailPicture) {
		this.detailPicture = detailPicture;
	}
	public List<GoodsAndColorno> getGoodsAndColornoList() {
		return goodsAndColornoList;
	}
	public void setGoodsAndColornoList(List<GoodsAndColorno> goodsAndColornoList) {
		this.goodsAndColornoList = goodsAndColornoList;
	}
	@Override
	public String toString() {
		return "LipstickAndPicturesAndGoodsAndColorno [lipstick=" + lipstick
				+ ", mainPicture=" + mainPicture + ", detailPicture="
				+ detailPicture + ", goodsAndColornoList="
				+ goodsAndColornoList + "]";
	}
	
}
