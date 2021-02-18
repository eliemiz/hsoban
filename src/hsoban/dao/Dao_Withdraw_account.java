package hsoban.dao;
import java.sql.SQLException;
import java.util.ArrayList;
import hsoban.vo.Withdraw_account;

public class Dao_Withdraw_account extends Dao{
	
	//조회 (전체, 리스트)
	public ArrayList<Withdraw_account> getWithdraw_accountList(){
		
		ArrayList<Withdraw_account> list = new ArrayList<Withdraw_account>();
		
		try {
			connect();
			
			String sql = "SELECT * FROM WITHDRAW_ACCOUNT";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				Withdraw_account withdraw = new Withdraw_account(rs.getInt(1),rs.getString(2),
						rs.getDate(3));
				list.add(withdraw);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	//입력
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
