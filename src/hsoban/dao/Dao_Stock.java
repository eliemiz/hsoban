package hsoban.dao;

import java.sql.SQLException;

import hsoban.vo.Stock;

public class Dao_Stock extends Dao {
	// 조회(전체, 리스트) - NOT USING

	// 조회(조건, 단일) - product_id, color
	public Stock getStock(int product_id, String color) {
		Stock stlist = null;
		return stlist;
	}

	// 수정
	public void updateStock(Stock stock) {
		try {
			connect();
			con.setAutoCommit(false);

			String sql = "UPDATE STOCK SET STOCK = ? WHERE PRODUCT_ID = ? AND COLOR = ?";
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
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		Dao_Stock dao = new Dao_Stock();
		dao.updateStock(new Stock(100200, "그린(유광)", 30));
	}
}