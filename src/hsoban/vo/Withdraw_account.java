package hsoban.vo;
/*
 * -- 탈퇴회원 테이블
CREATE TABLE WITHDRAW_ACCOUNT (
	ACCOUNT_ID NUMBER,
	REASON VARCHAR2(4000),
	WITHDRAW_DATE DATE,
	CONSTRAINT WITHDRAW_ACCOUNT_PK PRIMARY KEY (ACCOUNT_ID)
);
 */

import java.util.Date;

public class Withdraw_account {

	private int account_id;
	private String reason;
	private Date withdraw_date;
	private String withdraw_date_s;
	public Withdraw_account() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Withdraw_account(int account_id, String reason, Date withdraw_date) {
		super();
		this.account_id = account_id;
		this.reason = reason;
		this.withdraw_date = withdraw_date;
	}
	public Withdraw_account(int account_id, String reason, String withdraw_date_s) {
		super();
		this.account_id = account_id;
		this.reason = reason;
		this.withdraw_date_s = withdraw_date_s;
	}
	public int getAccount_id() {
		return account_id;
	}
	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public Date getWithdraw_date() {
		return withdraw_date;
	}
	public void setWithdraw_date(Date withdraw_date) {
		this.withdraw_date = withdraw_date;
	}
	public String getWithdraw_date_s() {
		return withdraw_date_s;
	}
	public void setWithdraw_date_s(String withdraw_date_s) {
		this.withdraw_date_s = withdraw_date_s;
	}
}
