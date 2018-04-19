package kissolive.goods.domain;

import kissolive.colorno.domain.Colorno;

public class GoodsAndColorno {
	private Goods goods;
	private Colorno colorno;
	public GoodsAndColorno() {
		super();
	}
	public GoodsAndColorno(Goods goods, Colorno colorno) {
		super();
		this.goods = goods;
		this.colorno = colorno;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public Colorno getColorno() {
		return colorno;
	}
	public void setColorno(Colorno colorno) {
		this.colorno = colorno;
	}
	@Override
	public String toString() {
		return "GoodsAndColorno [goods=" + goods + ", colorno=" + colorno + "]";
	}
	
}
