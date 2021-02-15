package hsoban.vo;

/*
CREATE TABLE PRODUCT (
	PRODUCT_ID NUMBER,
	COLOR VARCHAR2(50),
	NAME VARCHAR2(100),
	CATEGORY VARCHAR2(50),
	PRODUCT_SIZE VARCHAR2(50),
	PRICE NUMBER,
	DESCRIPTION VARCHAR2(1000),
	THUMBNAIL VARCHAR2(1000),
	CONSTRAINT PRODUCT_PK PRIMARY KEY (PRODUCT_ID, COLOR)
);
 */
public class Product {
	private int product_id;
	private String color;
	private String name;
	private String category;
	private String product_size;
	private int price;
	private String description;
	private String thumbnail; // 썸네일 경로

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(int product_id, String color, String name, String category, String product_size, int price,
			String description, String thumbnail) {
		super();
		this.product_id = product_id;
		this.color = color;
		this.name = name;
		this.category = category;
		this.product_size = product_size;
		this.price = price;
		this.description = description;
		this.thumbnail = thumbnail;
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

}
