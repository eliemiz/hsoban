package hsoban.vo;

/*-- 관심상품 테이블
CREATE TABLE WISH_LIST (
	ACCOUNT_ID NUMBER,
	PRODUCT_ID NUMBER,
	COLOR VARCHAR2(50),
	CONSTRAINT WISH_LIST_PK PRIMARY KEY (ACCOUNT_ID, PRODUCT_ID, COLOR)
);*/

public class WishList {
	private int account_id;
	private int product_id;
	private String color;

	// constructor
	public WishList() {
		super();
		// TODO Auto-generated constructor stub
	}

	public WishList(int account_id, int product_id, String color) {
		super();
		this.account_id = account_id;
		this.product_id = product_id;
		this.color = color;
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

	@Override
	public String toString() {
		return "WishList [account_id=" + account_id + ", product_id=" + product_id + ", color=" + color + "]";
	}

}
