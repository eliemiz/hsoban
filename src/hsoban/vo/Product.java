package hsoban.vo;

/*
CREATE TABLE PRODUCT (
	PRODUCT_ID NUMBER,
	COLOR VARCHAR2(50),
	NAME VARCHAR2(100),
	PRODUCT_SIZE VARCHAR2(50),
	PRICE NUMBER,
	DESCRIPTION VARCHAR2(1000),
	CONSTRAINT PRODUCT_PK PRIMARY KEY (PRODUCT_ID, COLOR)
);
 */
public class Product {
	private int product_id;
	private String color;
	private String name;
	private String product_size;
	private int price;
	private String description;

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(int product_id, String color, String name, String product_size, int price, String description) {
		super();
		this.product_id = product_id;
		this.color = color;
		this.name = name;
		this.product_size = product_size;
		this.price = price;
		this.description = description;
	}

	public Product(int product_id, String color) {
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProduct_size() {
		return product_size;
	}

	public void setProduct_size(String product_size) {
		this.product_size = product_size;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
