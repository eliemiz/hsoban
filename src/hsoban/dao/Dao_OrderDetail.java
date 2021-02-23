package hsoban.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import hsoban.vo.OrderDetail;

public class Dao_OrderDetail extends Dao {
	// 조회
	public ArrayList<OrderDetail> getOrderDetailList() {
		ArrayList<OrderDetail> list = new ArrayList<OrderDetail>();

		try {
			connect();

			String sql = "SELECT * FROM ORDER_BY_DETAIL";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				OrderDetail order = new OrderDetail(rs.getInt("ORDER_ID"), rs.getInt("ACCOUNT_ID"),
						rs.getDate("ORDER_DATE"), rs.getInt("POST"), rs.getString("ADDRESS"), rs.getString("ADDRESS2"),
						rs.getString("ORDER_MESSAGE"), rs.getString("PAY"), rs.getInt("TOTAL"));
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

	// 조회 (리스트, account_id)
	public ArrayList<OrderDetail> getOrderDetailList(int account_id) {
		ArrayList<OrderDetail> list = new ArrayList<OrderDetail>();

		try {
			connect();

			String sql = "SELECT * FROM ORDER_BY_DETAIL WHERE ACCOUNT_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				OrderDetail order = new OrderDetail(rs.getInt("ORDER_ID"), rs.getInt("ACCOUNT_ID"),
						rs.getDate("ORDER_DATE"), rs.getInt("POST"), rs.getString("ADDRESS"), rs.getString("ADDRESS2"),
						rs.getString("ORDER_MESSAGE"), rs.getString("PAY"), rs.getInt("TOTAL"));
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

	// 조회 (단일, order_id)
	public OrderDetail getOrderDetail(int order_id) {
		OrderDetail order = new OrderDetail();

		try {
			connect();

			String sql = "SELECT * FROM ORDER_BY_DETAIL WHERE ORDER_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, order_id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				order = new OrderDetail(rs.getInt("ORDER_ID"), rs.getInt("ACCOUNT_ID"), rs.getDate("ORDER_DATE"),
						rs.getInt("POST"), rs.getString("ADDRESS"), rs.getString("ADDRESS2"),
						rs.getString("ORDER_MESSAGE"), rs.getString("PAY"), rs.getInt("TOTAL"));
			}

			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return order;
	}

	public int getNextOrderId() {

		int order_id = 0;

		try {
			connect();

			String sql = "SELECT ORDER_ID_SEQ.NEXTVAL AS ORDER_ID FROM DUAL";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				order_id = rs.getInt("ORDER_ID");
			}

			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return order_id;
	}

	// 입력
	public void insertOrderDetail(OrderDetail order) {

		try {
			connect();
			con.setAutoCommit(false);

			String sql = "INSERT INTO ORDER_BY_DETAIL VALUES (?,?,TO_DATE(?,'YYYY-MM-DD'),?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, order.getOrder_id());
			pstmt.setInt(2, order.getAccount_id());
			pstmt.setString(3, order.getOrder_date_s());
			pstmt.setInt(4, order.getPost());
			pstmt.setString(5, order.getAddress());
			pstmt.setString(6, order.getAddress2());
			pstmt.setString(7, order.getOrder_message());
			pstmt.setString(8, order.getPay());
			pstmt.setInt(9, order.getTotal());

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
		Dao_OrderDetail dao = new Dao_OrderDetail();
		
		// insert
		// dao.insertOrderDetail(new OrderDetail(10000, 100001, "2020-01-01", 13358, "서울신림동", "상세한주소", "배송시 던져주세요", "외상", 54000));
		dao.insertOrderDetail(new OrderDetail(10001, 100001, "2020-01-01", 13358, "서울신림동", "상세한주소", "배송시 던져주세요", "외상", 54000));
		
		ArrayList<OrderDetail> list = dao.getOrderDetailList(100001);
		System.out.println(list);
		
		OrderDetail order = dao.getOrderDetail(10000);
		System.out.println(order);
		
	}
}
