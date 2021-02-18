package hsoban.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import hsoban.vo.Product;
import hsoban.vo.Stock;

public class Dao_Product extends Dao {
	// 조회(전체, 리스트)
	public ArrayList<Product> getProdList() {
		ArrayList<Product> plist = new ArrayList<Product>();
		try {
			connect();

			String sql = "SELECT * FROM PRODUCT ORDER BY CATEGORY";
			pstmt = con.prepareStatement(sql);
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return plist;
	}

	// 조회(조건, 리스트) - category
	public ArrayList<Product> getProdList(String category) {
		ArrayList<Product> plist = new ArrayList<Product>();
		try {
			connect();

			String sql = "SELECT * FROM PRODUCT WHERE upper(CATEGORY) LIKE '%'||UPPER( ? )||'%' ORDER BY PRODUCT_ID";
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
	public Product getProdList(int product_id, String color) {
		Product product = null;
		try {
			connect();
			
			// 0218. color LIKE '%'||UPPER( ? )||'%' 를 color = ? 로 수정
			String sql = "SELECT * FROM PRODUCT WHERE product_id = ? AND color = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, product_id);
			pstmt.setString(2, color);
			
			rs = pstmt.executeQuery();

			if (rs.next()) { // 0218 while을 if로 수정
				product = new Product(rs.getInt("product_id"), rs.getString("color"), rs.getString("name"),
						rs.getString("category"), rs.getString("product_size"), rs.getInt("price"),
						rs.getString("description"), rs.getString("thumbnail"));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return product;
	}
	
	// 등록 - 0218 작성. 엑셀에는 입력항목 X로 되어있으나 혹시 몰라서 작성
		public void insertProduct(Product ins) {
			try {
				connect();
				con.setAutoCommit(false);

				String sql = "INSERT INTO PRODUCT \r\n"
							+ "VALUES(product_id_seq.nextval,'?','?','?','?',?,'?','?')";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, ins.getColor());
				pstmt.setString(2, ins.getName());
				pstmt.setString(3, ins.getCategory());
				pstmt.setString(4, ins.getProduct_size());
				pstmt.setInt(5, ins.getPrice());
				pstmt.setString(6, ins.getDescription());
				pstmt.setString(7, ins.getThumbnail());
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

		// 수정 - 0218 작성. 엑셀에는 입력항목 X로 되어있으나 혹시 몰라서 작성
		public void updateProduct(Product upt) {
			try {
				connect();
				con.setAutoCommit(false);
				
				// 상품 가격을 변경할 수도 있다고 생각해서 PRICE만 변경처리 할 수 있게 작성했습니다.
				String sql = "UPDATE PRODUCT \r\n"
						+ " SET PRICE = ? WHERE COLOR = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, upt.getPrice());
				pstmt.setString(2, upt.getColor());
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
		public void delProduct(Product del) {
			try {
				connect();
				con.setAutoCommit(false);

				String sql = "DELETE FROM PRODUCT WHERE PRODUCT_ID = ?";
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
		Dao_Product dao = new Dao_Product();
		dao.getProdList();
//		ArrayList<Product> plist = dao.getProdList("");
//		ArrayList<Product> plist = dao.getProdList(0,"");
	}
}
