package hsoban.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import hsoban.vo.Stock;

public class Dao_Stock extends Dao {
	// 조회(전체, 리스트) - NOT USING

	// 조회(조건, 단일) - product_id, color
	public ArrayList<Stock> getStock(int product_id, String color) {
		ArrayList<Stock> stlist = new ArrayList<Stock>();
		try {
			connect();
			String sql = "SELECT * FROM STOCK WHERE product_id = ? AND color LIKE '%'||UPPER( ? )||'%'";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, product_id);
			pstmt.setString(2, color);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Stock stock = new Stock(rs.getInt("product_id"), rs.getString("color"), rs.getInt("stock"));
				stlist.add(stock);
			}

			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return stlist;
	}

	// 수정
	public void updateStock(Stock stock) {
		try {
			connect();
			con.setAutoCommit(false);

			String sql = "UPDATE STOCK SET STOCK = ? WHERE PRODUCT_ID = ? AND COLOR LIKE '%'||UPPER( ? )||'%'";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, stock.getStock());
			pstmt.setInt(2, stock.getProduct_id());
			pstmt.setString(3, stock.getColor());
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
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		Dao_Stock dao = new Dao_Stock();

		ArrayList<Stock> stlist = dao.getStock(0, "");
		dao.updateStock(new Stock(100200, "그린(유광)", 30));
	}
}
