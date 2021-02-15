package hsoban.vo;

import java.util.Date;

/*
CREATE TABLE ACCOUNT (
	ACCOUNT_ID NUMBER,
	NAME VARCHAR2(100),
	ID VARCHAR2(100),
	PASS VARCHAR2(100),
	BIRTHDAY DATE,
	GENDER CHAR(3),
	POST NUMBER,
	ADDRESS VARCHAR2(300),
	ADDRESS2 VARCHAR2(300),
	EMAIL VARCHAR2(100),
	PHONE CHAR(13),
	PHONE2 VARCHAR2(20),
	MAIL_RECV CHAR(1) CONSTRAINT MAIL_RECV_CK CHECK (MAIL_RECV IN ('0', '1')),
	SMS_RECV CHAR(1) CONSTRAINT SMS_RECV_CK CHECK (SMS_RECV IN ('0', '1')),
	CONSTRAINT ACCOUNT_PK PRIMARY KEY (ACCOUNT_ID)
);
 */
public class Account {
	private int account_id;
	private String name;
	private String id;
	private String pass;
	private Date birthday;
	private String birthday_s;
	private String gender;
	private int post;
	private String address;
	private String address2;
	private String email;
	private String phone;
	private String phone2;
	
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Account(int account_id, String name, String id, String pass, String birthday_s, String gender, int post,
			String address, String address2, String email, String phone, String phone2) {
		super();
		this.account_id = account_id;
		this.name = name;
		this.id = id;
		this.pass = pass;
		this.birthday_s = birthday_s;
		this.gender = gender;
		this.post = post;
		this.address = address;
		this.address2 = address2;
		this.email = email;
		this.phone = phone;
		this.phone2 = phone2;
	}

	public Account(int account_id, String name, String id, String pass, Date birthday, String gender, int post,
			String address, String address2, String email, String phone, String phone2) {
		super();
		this.account_id = account_id;
		this.name = name;
		this.id = id;
		this.pass = pass;
		this.birthday = birthday;
		this.gender = gender;
		this.post = post;
		this.address = address;
		this.address2 = address2;
		this.email = email;
		this.phone = phone;
		this.phone2 = phone2;
	}

	public Account(int account_id, String pass) {
		super();
		this.account_id = account_id;
		this.pass = pass;
	}

	public Account(String name, String email) {
		super();
		this.name = name;
		this.email = email;
	}

	public Account(String name, String phone, String phone2) {
		super();
		this.name = name;
		this.phone = phone;
		this.phone2 = phone2;
	}

	public int getAccount_id() {
		return account_id;
	}

	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getBirthday_s() {
		return birthday_s;
	}

	public void setBirthday_s(String birthday_s) {
		this.birthday_s = birthday_s;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

}

