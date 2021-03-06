package hsoban.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import hsoban.vo.Account;



public class Dao_Account extends Dao {
	// 조회(전체) 
	public ArrayList<Account> getAccountList(){
		ArrayList<Account> list = new ArrayList<Account>();
		try {
			connect();
			String sql = "SELECT * FROM ACCOUNT";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Account account = new Account(rs.getInt("ACCOUNT_ID"), rs.getString("NAME"),
						rs.getString("ID"), rs.getString("PASS"), rs.getDate("BIRTHDAY"),
						rs.getString("GENDER"), rs.getInt("POST"), rs.getString("ADDRESS"), 
						rs.getString("ADDRESS2"), rs.getString("EMAIL"), rs.getString("PHONE"),
						rs.getString("PHONE2"), rs.getBoolean("MAIL_RECV"), rs.getBoolean("SMS_RECV"),
						rs.getString("AUTH"));
				list.add(account);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	// 조회(조건-단일) - 회원번호
	public Account getAccount(int account_id){
		Account account = null;
		try {
			connect();
			String sql = "SELECT * FROM account WHERE account_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);		
			rs = pstmt.executeQuery();
			if(rs.next()) {
				account = new Account(rs.getInt("ACCOUNT_ID"), rs.getString("NAME"),
						rs.getString("ID"), rs.getString("PASS"), rs.getDate("BIRTHDAY"),
						rs.getString("GENDER"), rs.getInt("POST"), rs.getString("ADDRESS"), 
						rs.getString("ADDRESS2"), rs.getString("EMAIL"), rs.getString("PHONE"),
						rs.getString("PHONE2"), rs.getBoolean("MAIL_RECV"), rs.getBoolean("SMS_RECV"),
						rs.getString("AUTH"));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return account;
	}
	public int login(String id, String pass) { 
		String SQL = "SELECT pass FROM account WHERE id = ?"; 
		try {
			connect();
			pstmt = con.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery(); 
			if (rs.next()) {
				if (rs.getString(1).contentEquals(pass)) {
					return 1; // 로그인 성공
				}
				else {
					return 0; // 비밀번호 불일치
				}
			}
			return -1; // 아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // DB 오류 
	}


	// 조회(조건-단일) - 아이디, 비밀번호
	public Account getAccount(String id, String pass){
		Account account = null;
		try {
			connect();
			String sql = "SELECT * FROM account WHERE id=? AND pass=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				account = new Account(rs.getInt("ACCOUNT_ID"), rs.getString("NAME"),
						rs.getString("ID"), rs.getString("PASS"), rs.getDate("BIRTHDAY"),
						rs.getString("GENDER"), rs.getInt("POST"), rs.getString("ADDRESS"), 
						rs.getString("ADDRESS2"), rs.getString("EMAIL"), rs.getString("PHONE"),
						rs.getString("PHONE2"), rs.getBoolean("MAIL_RECV"), rs.getBoolean("SMS_RECV"),
						rs.getString("AUTH"));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return account;
	}
	// 조회(조건-단일) - 이름, 이메일
	public Account getAccount2(String name, String email){
		Account account = null;
		try {
			connect();
			String sql = "SELECT * FROM account WHERE name=? AND email=?";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				account = new Account(rs.getInt("ACCOUNT_ID"), rs.getString("NAME"),
						rs.getString("ID"), rs.getString("PASS"), rs.getDate("BIRTHDAY"),
						rs.getString("GENDER"), rs.getInt("POST"), rs.getString("ADDRESS"), 
						rs.getString("ADDRESS2"), rs.getString("EMAIL"), rs.getString("PHONE"),
						rs.getString("PHONE2"), rs.getBoolean("MAIL_RECV"), rs.getBoolean("SMS_RECV"),
						rs.getString("AUTH"));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return account;
	}
	// 조회(조건-단일) 이름, 폰번호
	public Account getAccount3(String name, String phone){
		Account account = null;
		try {
			connect();
			String sql = "SELECT * FROM account WHERE name=? AND phone=?";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, phone);			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				account = new Account(rs.getInt("ACCOUNT_ID"), rs.getString("NAME"),
						rs.getString("ID"), rs.getString("PASS"), rs.getDate("BIRTHDAY"),
						rs.getString("GENDER"), rs.getInt("POST"), rs.getString("ADDRESS"), 
						rs.getString("ADDRESS2"), rs.getString("EMAIL"), rs.getString("PHONE"),
						rs.getString("PHONE2"), rs.getBoolean("MAIL_RECV"), rs.getBoolean("SMS_RECV"),
						rs.getString("AUTH"));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return account;
	}
	// 입력 
	public void insertAccount(Account account) {
		try {
			connect();
			con.setAutoCommit(false);
			String sql = "INSERT INTO ACCOUNT VALUES (ACCOUNT_ID_SEQ.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, account.getName());
			pstmt.setString(2, account.getId());
			pstmt.setString(3, account.getPass());
			pstmt.setString(4, account.getBirthday_s());
			pstmt.setString(5, account.getGender());
			pstmt.setInt(6, account.getPost());
			pstmt.setString(7, account.getAddress());
			pstmt.setString(8, account.getAddress2());
			pstmt.setString(9, account.getEmail());
			pstmt.setString(10, account.getPhone());
			pstmt.setString(11, account.getPhone2());
			pstmt.setBoolean(12, account.isMail_recv());
			pstmt.setBoolean(13, account.isSms_recv());
			pstmt.setString(14, account.getAuth());
			
			rs = pstmt.executeQuery();
			con.commit();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				con.rollback();
			} catch(SQLException e1) {
				e1.printStackTrace();
			}
		} catch(Exception e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}
	// 계정 수정
	public void updateAccount(Account account) {
		try {
			connect();
			con.setAutoCommit(false);
			String sql = "UPDATE account SET \r\n"
					+ "name = ?,\r\n"
					+ "pass = ?,\r\n"			
					+ "gender = ?,\r\n"
					+ "post = ?,\r\n"
					+ "address = ?,\r\n"
					+ "address2 = ?,\r\n"
					+ "email = ?,\r\n"
					+ "phone = ?,\r\n"
					+ "phone2 = ?,\r\n"
					+ "mail_recv = ?,\r\n"
					+ "sms_recv = ?\r\n"
					+ "WHERE account_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, account.getName());
			pstmt.setString(2, account.getPass());
			pstmt.setString(3, account.getGender());
			pstmt.setInt(4, account.getPost());
			pstmt.setString(5, account.getAddress());
			pstmt.setString(6, account.getAddress2());
			pstmt.setString(7, account.getEmail());
			pstmt.setString(8, account.getPhone());
			pstmt.setString(9, account.getPhone2());
			pstmt.setBoolean(10, account.isMail_recv());
			pstmt.setBoolean(11, account.isSms_recv());
			pstmt.setInt(12, account.getAccount_id());
			pstmt.executeQuery();
			con.commit();
			pstmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				con.rollback();
			} catch(SQLException e1) {
				e1.printStackTrace();
			}
		} catch(Exception e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}
	// 계정 삭제
	public void deleteAccount(int account_id) {
		try {
			connect();
			con.setAutoCommit(false);
			
			String sql = "DELETE FROM ACCOUNT \r\n"
					+ "	WHERE ACCOUNT_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);
			pstmt.executeQuery();
			con.commit();
			
			pstmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				con.rollback();
			} catch(SQLException e1) {
				e1.printStackTrace();
			}
		} catch(Exception e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch(SQLException e1) {
				e1.printStackTrace();
			}
		}
	}
	public static void main(String[] args) {
		Dao_Account dao = new Dao_Account();
	  //ArrayList<Account> alist = dao.getAccount(account_id, pass)("테스트", "010-1234-5678");
		
		
		
		
		/*
		 * dao.insertAccount(new Account(0, "홍길동","test22","123","2020-03-03","여", 01,
		 * "경기도 어딘가","222호","test2@test2.com","010-9451-9451","02-1234-4321", false,
		 * false, "회원"));
		 */
		 
		
		 
	  /*dao.updateAccount(new Account(0,"테스트2","test","test123!!","2020-01-01", "남", 01,
				"경기도 어딘가","111호","test@test.com","010-1234-5678","02-1234-5678", false, false, null));*/
	   // dao.deleteAccount(0);
	}	
}
