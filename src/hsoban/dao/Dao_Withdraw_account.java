package hsoban.dao;
import java.sql.SQLException;
import java.util.ArrayList;
import hsoban.vo.Withdraw_account;

public class Dao_Withdraw_account extends Dao{

	public void insertWithdraw_account(Withdraw_account with) {
		try {
			connect();
			con.setAutoCommit(false);
			
			String sql = "INSERT INTO WITHDRAW_ACCOUNT VALUES (?, ?, ?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, with.getAccount_id());
			pstmt.setString(2, with.getReason());
			pstmt.setString(3, with.getWithdraw_date_s());
			
			pstmt.executeQuery();
			con.commit();
			
			pstmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}catch(Exception e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Dao_Withdraw_account dao = new Dao_Withdraw_account();
		dao.insertWithdraw_account(new Withdraw_account(124501,"절약","2021-02-16"));
		
	}

}
