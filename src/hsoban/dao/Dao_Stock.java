package hsoban.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import hsoban.vo.Stock;

public class Dao_Stock extends Dao {
	// 조회(조건, 리스트) - NOT USING - 0218 추가(X이나 혹시몰라 작성)
	public ArrayList<Stock> getStockList() {
		ArrayList<Stock> stlist = new ArrayList<Stock>();
		try {
			connect();
			String sql = "SELECT * FROM STOCK ORDER BY PRODUCT_ID";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Stock s = new Stock(rs.getInt(1), rs.getString(2), rs.getInt(3));
				stlist.add(s);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("DB 에러: " + e.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("일반 에러: " + e.getMessage());
		}
		return stlist;
	}

	// 조회(조건, 단일) - product_id, color
	public Stock getStock(int product_id, String color) {
		Stock stock = null;
		try {
			connect();
			// 0218. color LIKE '%'||UPPER( ? )||'%' 를 color = ? 로 수정
			String sql = "SELECT * FROM STOCK WHERE product_id = ? AND color = ?";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, product_id);
			pstmt.setString(2, color);
			rs = pstmt.executeQuery();

			if (rs.next()) { // 0218. while에서 if로 변경
				stock = new Stock(rs.getInt("product_id"), rs.getString("color"), rs.getInt("stock"));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("DB 에러: " + e.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("일반 에러: " + e.getMessage());
		}
		return stock;
	}

	// 등록 - 0218 작성. 엑셀에는 입력항목 X로 되어있으나 혹시 몰라서 작성
	public void insertStock(Stock ins) {
		try {
			connect();
			con.setAutoCommit(false);

			String sql = "INSERT INTO STOCK VALUES(?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, ins.getProduct_id());
			pstmt.setString(2, ins.getColor());
			pstmt.setInt(3, ins.getStock());
			pstmt.executeUpdate();
			con.commit();

			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("DB 에러: " + e.getMessage());
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 수정
	public void updateStock(Stock upt) {
		try {
			connect();
			con.setAutoCommit(false);

			String sql = "UPDATE STOCK SET STOCK = ? WHERE PRODUCT_ID = ? AND COLOR = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, upt.getStock());
			pstmt.setInt(2, upt.getProduct_id());
			pstmt.setString(3, upt.getColor());
			pstmt.executeUpdate();
			con.commit();

			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("DB 에러: " + e.getMessage());
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("일반 에러: " + e.getMessage());
		}
	}

	// 삭제 - 0218 작성. 엑셀에는 입력항목 X로 되어있으나 혹시 몰라서 작성
	public void delStock(Stock del) {
		try {
			connect();
			con.setAutoCommit(false);

			String sql = "DELETE FROM STOCK WHERE PRODUCT_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, del.getProduct_id());
			pstmt.executeUpdate();
			con.commit();

			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("DB 에러: " + e.getMessage());
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("일반 에러: " + e.getMessage());
		}
	}

	public static void main(String[] args) {
		Dao_Stock dao = new Dao_Stock();
	}
}
