package hsoban.vo;

import java.util.Date;

public class Notice {
	private int notice_id;
	private String title;
	private String content;
	private int account_id;
	private Date posting_date;
	private String posting_date_s;
	private int views;
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	/*
	@Override
	public String toString() {
		return "Notice [notice_id=" + notice_id + ", title=" + title + ", content=" + content + ", account_id="
				+ account_id + ", posting_date=" + posting_date + ", posting_date_s=" + posting_date_s + ", views="
				+ views + "]";
	}
	*/

	public Notice(int notice_id, String title, String content, int account_id, String posting_date_s, int views) {
		super();
		this.notice_id = notice_id;
		this.title = title;
		this.content = content;
		this.account_id = account_id;
		this.posting_date_s = posting_date_s;
		this.views = views;
	}

	public Notice(int notice_id, String title, String content, int account_id, Date posting_date, int views) {
		super();
		this.notice_id = notice_id;
		this.title = title;
		this.content = content;
		this.account_id = account_id;
		this.posting_date = posting_date;
		this.views = views;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
