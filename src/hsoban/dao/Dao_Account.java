package hsoban.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import hsoban.vo.Account;


public class Dao_Account extends Dao {
	// 단일 조회 계정번호/비밀번호
	public ArrayList<Account> getAccountList(int account_id, String pass){
		ArrayList<Account> alist = new ArrayList<Account>();
		try {
			connect();
			
			String sql = "SELECT * FROM account WHERE account_id=? AND pass=?";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);
			pstmt.setString(2, pass);			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Account account = new Account(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getString(8), 
						rs.getString(9), rs.getString(10), rs.getString(11),
						rs.getString(12), rs.getBoolean(13), rs.getBoolean(14),
						rs.getString(15));
				alist.add(account);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return alist;
	}
	// 단일 조회2 이름/이메일
	public ArrayList<Account> getAccountList2(String name, String email){
		ArrayList<Account> alist = new ArrayList<Account>();
		try {
			connect();
			
			String sql = "SELECT * FROM account WHERE name=? AND email=?";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Account account = new Account(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getString(8), 
						rs.getString(9), rs.getString(10), rs.getString(11),
						rs.getString(12), rs.getBoolean(13), rs.getBoolean(14),
						rs.getString(15));
				alist.add(account);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return alist;
	}
	// 단일 조회3 이름/번호
	public ArrayList<Account> getAccountList3(String name, String phone){
		ArrayList<Account> alist = new ArrayList<Account>();
		try {
			connect();
			
			String sql = "SELECT * FROM account WHERE account_id=? AND pass=?";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, phone);			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Account account = new Account(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getString(8), 
						rs.getString(9), rs.getString(10), rs.getString(11),
						rs.getString(12), rs.getBoolean(13), rs.getBoolean(14),
						rs.getString(15));
				alist.add(account);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return alist;
	}
	// 계정 등록 
	public void insertAccount(Account account) {
		try {
			connect();
			con.setAutoCommit(false);
			String sql = "INSERT INTO ACCOUNT VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account.getAccount_id());
			pstmt.setString(2, account.getName());
			pstmt.setString(3, account.getId());
			pstmt.setString(4, account.getPass());
			pstmt.setString(5, account.getBirthday_s());
			pstmt.setString(6, account.getGender());
			pstmt.setInt(7, account.getPost());
			pstmt.setString(8, account.getAddress());
			pstmt.setString(9, account.getAddress2());
			pstmt.setString(10, account.getEmail());
			pstmt.setString(11, account.getPhone());
			pstmt.setString(12, account.getPhone2());
			pstmt.setBoolean(13, account.isMail_recv());
			pstmt.setBoolean(14, account.isSms_recv());
			pstmt.setString(15, account.getAuth());
			
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
			} catch (Exception e1) {
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
					+ "id = ?,\r\n"
					+ "pass = ?,\r\n"
					+ "birthday_s = ?,\r\n"
					+ "post = ?,\r\n"
					+ "address = ?,\r\n"
					+ "address2 = ?,\r\n"
					+ "email = ?,\r\n"
					+ "phone = ?,\r\n"
					+ "phone2 = ?,\r\n"
					+ "mail_recv = ?,\r\n"
					+ "sms_recv = ?,\r\n"
					+ "auth = ?\r\n"
					+ "WHERE account_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, account.getName());
			pstmt.setString(2, account.getId());
			pstmt.setString(3, account.getPass());
			pstmt.setString(4, account.getBirthday_s());
			pstmt.setInt(5, account.getPost());
			pstmt.setString(6, account.getAddress());
			pstmt.setString(7, account.getAddress2());
			pstmt.setString(8, account.getEmail());
			pstmt.setString(9, account.getPhone());
			pstmt.setString(10, account.getPhone2());
			pstmt.setBoolean(11, account.isMail_recv());
			pstmt.setBoolean(12, account.isSms_recv());
			pstmt.setString(13, account.getAuth());
			pstmt.setInt(14, account.getAccount_id());
			
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
			} catch (Exception e1) {
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
			} catch(Exception e1) {
				e1.printStackTrace();
			}
		}
	}
	public static void main(String[] args) {
		Dao_Account dao = new Dao_Account();
		ArrayList<Account> alist = dao.getAccountList3("테스트", "010-1234-5678");
		
	  /*dao.insertAccount(new Account(0,"테스트","test","test123!!","2020-01-01","남", 01,
				"경기도 어딘가","111호","test@test.com","010-1234-5678","02-1234-5678", false, false, null));*/
	  /*dao.updateAccount(new Account(0,"테스트2","test","test123!!","2020-01-01", "남", 01,
				"경기도 어딘가","111호","test@test.com","010-1234-5678","02-1234-5678", false, false, null));*/
	   // dao.deleteAccount(0);
	}	
}