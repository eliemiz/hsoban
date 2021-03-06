package hsoban.vo;

/*CREATE TABLE CART (
ACCOUNT_ID NUMBER,
PRODUCT_ID NUMBER,
COLOR VARCHAR2(50),
COUNT NUMBER,
CONSTRAINT CART_PK PRIMARY KEY (ACCOUNT_ID, PRODUCT_ID, COLOR)
);*/

public class Cart {
	private int account_id;
	private int product_id;
	private String color;
	private int count;

	// constructor
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cart(int account_id, int product_id, String color, int count) {
		super();
		this.account_id = account_id;
		this.product_id = product_id;
		this.color = color;
		this.count = count;
	}

	// getter and setter
	public int getAccount_id() {
		return account_id;
	}

	public void setAccount_id(int account_id) {
		this.account_id = account_id;
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
		return "Cart [account_id=" + account_id + ", product_id=" + product_id + ", color=" + color + ", count=" + count
				+ "]";
	}

}
