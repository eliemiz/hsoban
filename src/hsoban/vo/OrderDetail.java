package hsoban.vo;

import java.util.Date;

public class OrderDetail {
	private int order_id;
	private int account_id;
	private Date order_date;
	private String order_date_s;
	private int post;
	private String address;
	private String address2;
	private String order_message;
	private String pay;
	private int total;

	// constructor
	public OrderDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderDetail(int order_id, int account_id, Date order_date, int post, String address, String address2,
			String order_message, String pay, int total) {
		super();
		this.order_id = order_id;
		this.account_id = account_id;
		this.order_date = order_date;
		this.post = post;
		this.address = address;
		this.address2 = address2;
		this.order_message = order_message;
		this.pay = pay;
		this.total = total;
	}

	public OrderDetail(int order_id, int account_id, String order_date_s, int post, String address, String address2,
			String order_message, String pay, int total) {
		super();
		this.order_id = order_id;
		this.account_id = account_id;
		this.order_date_s = order_date_s;
		this.post = post;
		this.address = address;
		this.address2 = address2;
		this.order_message = order_message;
		this.pay = pay;
		this.total = total;
	}

	// property
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

	@Override
	public String toString() {
		return "OrderDetail [order_id=" + order_id + ", account_id=" + account_id + ", order_date=" + order_date
				+ ", order_date_s=" + order_date_s + ", post=" + post + ", address=" + address + ", address2="
				+ address2 + ", order_message=" + order_message + ", pay=" + pay + ", total=" + total + "]";
	}

}
