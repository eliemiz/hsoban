package hsoban.vo;

import java.util.Date;

public class Notice {
	private int notice_id;
	private String title;
	private int account_id;
	private String account_name;
	private Date posting_date;
	private int views;
	private String content;
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Notice(int notice_id, String title, int account_id, String account_name, Date posting_date, int views,
			String content) {
		super();
		this.notice_id = notice_id;
		this.title = title;
		this.account_id = account_id;
		this.account_name = account_name;
		this.posting_date = posting_date;
		this.views = views;
		this.content = content;
	}
	public int getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(int notice_id) {
		this.notice_id = notice_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getAccount_id() {
		return account_id;
	}
	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}
	public String getAccount_name() {
		return account_name;
	}
	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}
	public Date getPosting_date() {
		return posting_date;
	}
	public void setPosting_date(Date posting_date) {
		this.posting_date = posting_date;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
