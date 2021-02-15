package hsoban.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import hsoban.vo.Product;

public class Dao_Product extends Dao {
	// 조회(전체, 리스트)
	public ArrayList<Product> getProdList() {
		ArrayList<Product> plist = null;
		return plist;
	}

	// 조회(조건, 리스트) - category
	public ArrayList<Product> getProdList(String category) {
		ArrayList<Product> plist = new ArrayList<Product>();
		try {
			connect();

			String sql = "SELECT * FROM PRODUCT WHERE CATEGORY = ? ORDER BY PRODUCT_ID";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, category);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Product prod = new Product(rs.getInt("product_id"), rs.getString("color"), rs.getString("name"),
						rs.getString("category"), rs.getString("product_size"), rs.getInt("price"),
						rs.getString("description"), rs.getString("thumbnail"));
				plist.add(prod);
			}

			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return plist;
	}
	
	// 조회(조건, 단일) - product_id, color
	public Product getProduct(int product_id, String color) {
		Product prod = null;
		return prod;
	}
	
	public static void main(String[] args) {
		Dao_Product dao = new Dao_Product();
		ArrayList<Product> plist = dao.getProdList("");
	}
}
