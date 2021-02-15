package hsoban.vo;

import java.util.Date;

/*
 -- 문의글 테이블 생성
CREATE TABLE QNA (
   QNA_ID NUMBER,
   PRODUCT_ID NUMBER,
   COLOR VARCHAR2(50),
   TITLE VARCHAR2(300),
   CONTENT VARCHAR2(4000),
   ACCOUNT_ID NUMBER,
   POSTING_DATE DATE,
   VIEWS NUMBER,
   ATTACH VARCHAR2(200),
   PREV_ID NUMBER,
   NEXT_ID NUMBER,
   CONSTRAINT QNA_PK PRIMARY KEY (QNA_ID)
);

 */
public class Qna {
	private int qna_id;
	private int product_id;
	private String color;
	private String title;
	private String content;
	private int account_id;
	private Date posting_date;
	private String posting_date_s;
	private int view;
	private String attach;
	private int prev_id;
	private int next_id;
	public Qna() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Qna(int qna_id, int product_id, String color, String title, String content, int account_id,
			Date posting_date, int view, String attach, int prev_id, int next_id) {
		super();
		this.qna_id = qna_id;
		this.product_id = product_id;
		this.color = color;
		this.title = title;
		this.content = content;
		this.account_id = account_id;
		this.posting_date = posting_date;
		this.view = view;
		this.attach = attach;
		this.prev_id = prev_id;
		this.next_id = next_id;
	}
	public Qna(int qna_id, int product_id, String color, String title, String content, int account_id,
			String posting_date_s, int view, String attach, int prev_id, int next_id) {
		super();
		this.qna_id = qna_id;
		this.product_id = product_id;
		this.color = color;
		this.title = title;
		this.content = content;
		this.account_id = account_id;
		this.posting_date_s = posting_date_s;
		this.view = view;
		this.attach = attach;
		this.prev_id = prev_id;
		this.next_id = next_id;
	}
	public int getQna_id() {
		return qna_id;
	}
	public void setQna_id(int qna_id) {
		this.qna_id = qna_id;
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
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	public String getAttach() {
		return attach;
	}
	public void setAttach(String attach) {
		this.attach = attach;
	}
	public int getPrev_id() {
		return prev_id;
	}
	public void setPrev_id(int prev_id) {
		this.prev_id = prev_id;
	}
	public int getNext_id() {
		return next_id;
	}
	public void setNext_id(int next_id) {
		this.next_id = next_id;
	}
      
}
