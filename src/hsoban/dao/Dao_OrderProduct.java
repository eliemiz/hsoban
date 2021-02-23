package hsoban.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import hsoban.vo.OrderProduct;

/*private int order_id;
private int product_id;
private String color;
private int count;*/
public class Dao_OrderProduct extends Dao {
	// 조회(전체)
	public ArrayList<OrderProduct> getOrderProductList() {
		ArrayList<OrderProduct> list = new ArrayList<OrderProduct>();

		try {
			connect();

			String sql = "SELECT * FROM ORDER_BY_PRODUCT";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				OrderProduct order = new OrderProduct(rs.getInt("ORDER_ID"), rs.getInt("PRODUCT_ID"),
						rs.getString("COLOR"), rs.getInt("COUNT"));
				list.add(order);
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

	// 조회(리스트, order_id)
	public ArrayList<OrderProduct> getOrderProductList(int order_id) {
		ArrayList<OrderProduct> list = new ArrayList<OrderProduct>();

		try {
			connect();

			String sql = "SELECT * FROM ORDER_BY_PRODUCT WHERE ORDER_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, order_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				OrderProduct order = new OrderProduct(rs.getInt("ORDER_ID"), rs.getInt("PRODUCT_ID"),
						rs.getString("COLOR"), rs.getInt("COUNT"));
				list.add(order);
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
	public void insertOrderProduct(OrderProduct order) {
		
		try {
			connect();
			con.setAutoCommit(false);
			
			String sql = "INSERT INTO ORDER_BY_PRODUCT VALUES (?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, order.getOrder_id());
			pstmt.setInt(2, order.getProduct_id());
			pstmt.setString(3, order.getColor());
			pstmt.setInt(4, order.getCount());
			
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
		Dao_OrderProduct dao = new Dao_OrderProduct();
		
		// insert
		dao.insertOrderProduct(new OrderProduct(10000, 100000, "블랙", 2));
		
		// order_id로 조회
		ArrayList<OrderProduct> list = dao.getOrderProductList(10000);
		System.out.println(list);
		
	}
}
