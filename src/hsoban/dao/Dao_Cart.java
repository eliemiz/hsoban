package hsoban.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import hsoban.vo.Cart;

/*CREATE TABLE CART (
	ACCOUNT_ID NUMBER,
	PRODUCT_ID NUMBER,
	COLOR VARCHAR2(50),
	COUNT NUMBER,
	CONSTRAINT CART_PK PRIMARY KEY (ACCOUNT_ID, PRODUCT_ID, COLOR)
);*/

public class Dao_Cart extends Dao {

	// 조회(전체, 리스트)
	public ArrayList<Cart> getCartList() {

		ArrayList<Cart> list = new ArrayList<Cart>();

		try {
			connect();

			String sql = "SELECT * FROM CART";
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				Cart cart = new Cart(rs.getInt("ACCOUNT_ID"), rs.getInt("PRODUCT_ID"), rs.getString("COLOR"),
						rs.getInt("COUNT"));
				list.add(cart);
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

	// 조회(조건, 리스트)
	public ArrayList<Cart> getCartList(int account_id) {

		ArrayList<Cart> list = new ArrayList<Cart>();

		try {
			connect();

			String sql = "SELECT * FROM CART WHERE ACCOUNT_ID = ? ORDER BY PRODUCT_ID, COLOR";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				Cart cart = new Cart(rs.getInt("ACCOUNT_ID"), rs.getInt("PRODUCT_ID"), rs.getString("COLOR"),
						rs.getInt("COUNT"));
				list.add(cart);
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

	// 조회(조건, 단일)
	public Cart getCart(int account_id, int product_id, String color) {

		Cart cart = null;

		try {
			connect();

			String sql = "SELECT * FROM CART WHERE ACCOUNT_ID = ? AND PRODUCT_ID = ? AND COLOR = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);
			pstmt.setInt(2, product_id);
			pstmt.setString(3, color);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				cart = new Cart(rs.getInt("ACCOUNT_ID"), rs.getInt("PRODUCT_ID"), rs.getString("COLOR"),
						rs.getInt("COUNT"));
			}

			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return cart;
	}

	// 입력
	public void insertCart(Cart cart) {

		try {
			connect();
			con.setAutoCommit(false);

			String sql = "INSERT INTO CART VALUES (?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cart.getAccount_id());
			pstmt.setInt(2, cart.getProduct_id());
			pstmt.setString(3, cart.getColor());
			pstmt.setInt(4, cart.getCount());
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

	// 수정
	public void updateCart(Cart cart) {
		try {
			connect();
			con.setAutoCommit(false);

			String sql = "UPDATE CART SET COUNT = ? WHERE ACCOUNT_ID = ? AND PRODUCT_ID = ? AND COLOR = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cart.getCount());
			pstmt.setInt(2, cart.getAccount_id());
			pstmt.setInt(3, cart.getProduct_id());
			pstmt.setString(4, cart.getColor());
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
	public void deleteCart(int account_id, int product_id, String color) {
		try {
			connect();
			con.setAutoCommit(false);

			String sql = "DELETE FROM CART WHERE ACCOUNT_ID = ? AND PRODUCT_ID = ? AND COLOR = ?";
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
		Dao_Cart dao = new Dao_Cart();
		ArrayList<Cart> list = dao.getCartList(100012);
		System.out.println(list);

		// dao.insertCart(new Cart(100201, 100023, "블랙", 5));
		// dao.deleteCart(100201, 100023, "블랙");
		dao.updateCart(new Cart(100200, 100022, "블랙", 10));
	}

}
