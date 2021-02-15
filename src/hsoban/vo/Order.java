package hsoban.vo;

import java.util.Date;

/*
 *-- 주문 테이블
CREATE TABLE ORDERED (
	ORDER_ID NUMBER,
	ACCOUNT_ID NUMBER,
	PRODUCT_ID NUMBER,
	COLOR VARCHAR2(50),
	ORDER_COUNT NUMBER,
	ORDER_DATE DATE,
	POST NUMBER,
	ADDRESS VARCHAR2(300),
	ADDRESS2 VARCHAR2(300),
	ORDER_MESSAGE VARCHAR2(300),
	PAY VARCHAR2(50),
	TOTAL NUMBER,
	CONSTRAINT ORDERED_PK PRIMARY KEY (ORDER_ID)
);

-- 210215: ORDER_ID 생성 시퀀스 추가
CREATE SEQUENCE ORDER_ID_SEQ
	START WITH 1
	INCREMENT BY 1;
 
 */

public class Order {
	private int order_id;
	private int account_id;
	private int product_id;
	private String color;
	private int order_count;
	private Date order_date;
	private String order_date_s;
	private int post;
	private String address;
	private String address2;
	private String order_message;
	private String pay;
	private int total;
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Order(int order_id, int account_id, int product_id, String color, int order_count, Date order_date, int post,
			String address, String address2, String order_message, String pay, int total) {
		super();
		this.order_id = order_id;
		this.account_id = account_id;
		this.product_id = product_id;
		this.color = color;
		this.order_count = order_count;
		this.order_date = order_date;
		this.post = post;
		this.address = address;
		this.address2 = address2;
		this.order_message = order_message;
		this.pay = pay;
		this.total = total;
	}
	public Order(int order_id, int account_id, int product_id, String color, int order_count, String order_date_s,
			int post, String address, String address2, String order_message, String pay, int total) {
		super();
		this.order_id = order_id;
		this.account_id = account_id;
		this.product_id = product_id;
		this.color = color;
		this.order_count = order_count;
		this.order_date_s = order_date_s;
		this.post = post;
		this.address = address;
		this.address2 = address2;
		this.order_message = order_message;
		this.pay = pay;
		this.total = total;
	}
	//조회 
	public Order(int account_id) {
		super();
		this.account_id = account_id;
	}
	//조회
	public Order(int order_id, int account_id) {
		super();
		this.order_id = order_id;
		this.account_id = account_id;
	}
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
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
	public int getOrder_count() {
		return order_count;
	}
	public void setOrder_count(int order_count) {
		this.order_count = order_count;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public String getOrder_date_s() {
		return order_date_s;
	}
	public void setOrder_date_s(String order_date_s) {
		this.order_date_s = order_date_s;
	}
	public int getPost() {
		return post;
	}
	public void setPost(int post) {
		this.post = post;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getOrder_message() {
		return order_message;
	}
	public void setOrder_message(String order_message) {
		this.order_message = order_message;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
}
