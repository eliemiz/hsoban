package hsoban.vo;

public class OrderProduct {
	private int order_id;
	private int product_id;
	private String color;
	private int count;

	// constructor
	public OrderProduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderProduct(int order_id, int product_id, String color, int count) {
		super();
		this.order_id = order_id;
		this.product_id = product_id;
		this.color = color;
		this.count = count;
	}

	// property
	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "OrderProduct [order_id=" + order_id + ", product_id=" + product_id + ", color=" + color + ", count="
				+ count + "]";
	}

}
