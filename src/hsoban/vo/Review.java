package hsoban.vo;
/*
 CREATE TABLE REVIEW (
   REVIEW_ID NUMBER,
   PRODUCT_ID NUMBER,
   COLOR VARCHAR2(50),
   TITLE VARCHAR2(300),
   CONTENT VARCHAR2(4000),
   ACCOUNT_ID NUMBER,
   POSTING_DATE DATE,
   VIEWS NUMBER,
   ATTACH VARCHAR2(200),
   CONSTRAINT REVIEW_PK PRIMARY KEY (REVIEW_ID)
);

 */

import java.util.Date;

public class Review {
	private int review_id;
	private int product_id;
	private String color;
	private String title;
	private String content;
	private int account_id;
	private Date posting_date;
	private String posting_date_s;
	private int views;
	private String attach;
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Review(int review_id, int product_id, String color, String title, String content, int account_id,
			Date posting_date, int views, String attach) {
		super();
		this.review_id = review_id;
		this.product_id = product_id;
		this.color = color;
		this.title = title;
		this.content = content;
		this.account_id = account_id;
		this.posting_date = posting_date;
		this.views = views;
		this.attach = attach;
	}
	public Review(int review_id, int product_id, String color, String title, String content, int account_id,
			String posting_date_s, int views, String attach) {
		super();
		this.review_id = review_id;
		this.product_id = product_id;
		this.color = color;
		this.title = title;
		this.content = content;
		this.account_id = account_id;
		this.posting_date_s = posting_date_s;
		this.views = views;
		this.attach = attach;
	}
	
	public Review(int review_id) {
		super();
		this.review_id = review_id;
	}

	public Review(int product_id, String color, String title, String content, String attach) {
		super();
		this.product_id = product_id;
		this.color = color;
		this.title = title;
		this.content = content;
		this.attach = attach;
	}
	
	
	public Review(int product_id, String color, String title, String content, int account_id, String posting_date_s,
			int views, String attach) {
		super();
		this.product_id = product_id;
		this.color = color;
		this.title = title;
		this.content = content;
		this.account_id = account_id;
		this.posting_date_s = posting_date_s;
		this.views = views;
		this.attach = attach;
	}
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getAccount_id() {
		return account_id;
	}
	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}
	public Date getPosting_date() {
		return posting_date;
	}
	public void setPosting_date(Date posting_date) {
		this.posting_date = posting_date;
	}
	public String getPosting_date_s() {
		return posting_date_s;
	}
	public void setPosting_date_s(String posting_date_s) {
		this.posting_date_s = posting_date_s;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getAttach() {
		return attach;
	}
	public void setAttach(String attach) {
		this.attach = attach;
	}


}
