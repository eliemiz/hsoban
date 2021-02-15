package hsoban.vo;

/*
CREATE TABLE STOCK (
	PRODUCT_ID NUMBER,
	COLOR VARCHAR2(50),
	STOCK NUMBER,
	CONSTRAINT STOCK_PK PRIMARY KEY (PRODUCT_ID, COLOR)
);
 */
public class Stock {
	private int product_id;
	private String color;
	private int stock;

	public Stock() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Stock(int product_id, String color, int stock) {
		super();
		this.product_id = product_id;
		this.color = color;
		this.stock = stock;
	}

	public Stock(int product_id, String color) {
		super();
		this.product_id = product_id;
		this.color = color;
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

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

}
