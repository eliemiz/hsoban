package hsoban.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import hsoban.vo.WishList;

/*-- 관심상품 테이블
CREATE TABLE WISH_LIST (
	ACCOUNT_ID NUMBER,
	PRODUCT_ID NUMBER,
	COLOR VARCHAR2(50),
	CONSTRAINT WISH_LIST_PK PRIMARY KEY (ACCOUNT_ID, PRODUCT_ID, COLOR)
);*/

public class Dao_WishList extends Dao {

	// 조회(조건, 리스트)
	public ArrayList<WishList> getWishList(int account_id) {
		ArrayList<WishList> list = new ArrayList<WishList>();

		try {
			connect();

			String sql = "SELECT * FROM WISH_LIST WHERE ACCOUNT_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				WishList wish = new WishList(rs.getInt("ACCOUNT_ID"), rs.getInt("PRODUCT_ID"), rs.getString("COLOR"));
				list.add(wish);
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

	// 입력
	public void insertWishList(WishList wish) {

		try {
			connect();
			con.setAutoCommit(false);

			String sql = "INSERT INTO WISH_LIST VALUES (?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, wish.getAccount_id());
			pstmt.setInt(2, wish.getProduct_id());
			pstmt.setString(3, wish.getColor());
			pstmt.executeQuery();
			con.commit();

			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		} catch (Exception e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}

	// 삭제
	public void deleteWishList(int account_id, int product_id, String color) {
		try {
			connect();
			con.setAutoCommit(false);

			String sql = "DELETE FROM WISH_LIST WHERE ACCOUNT_ID = ? AND PRODUCT_ID = ? AND COLOR = ?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, account_id);
			pstmt.setInt(2, product_id);
			pstmt.setString(3, color);
			
			pstmt.executeQuery();
			con.commit();

			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		} catch (Exception e) {
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
		Dao_WishList dao = new Dao_WishList();
		ArrayList<WishList> list = dao.getWishList(100012);
		System.out.println(list);
//		dao.insertWishList(new WishList(100012, 100303, "분홍"));
		dao.deleteWishList(100012, 100122, "블랙");
		list = dao.getWishList(100012);
		System.out.println(list);
	}
}
