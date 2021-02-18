package hsoban.dao;
import java.sql.SQLException;
import java.util.ArrayList;
import hsoban.vo.Order;


public class Dao_Order extends Dao{

	//조회(전체, 리스트)
	public ArrayList<Order> getOrderList(){
		
		ArrayList<Order> list = new ArrayList<Order>();
		
		try {
			connect();
			
			String sql = "SELECT * FROM ORDERED";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(new Order(rs.getInt(1), rs.getInt(2), rs.getInt(3),
						rs.getString(4), rs.getInt(5), rs.getDate(6), rs.getInt(7), 
						rs.getString(8), rs.getString(9), rs.getString(10), 
						rs.getString(11),rs.getInt(12)));
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
	
	
	//조회 (order_id)
	public ArrayList<Order> getOrderList(int order_id){
		
		ArrayList<Order> list = new ArrayList<Order>();
		
		try {
			connect();
			
			String sql = "SELECT * FROM ORDERED WHERE ORDER_ID = ? ORDER BY ORDER_DATE";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, order_id);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				Order order = new Order(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getString(4),
						rs.getInt(5),rs.getDate(6),rs.getInt(7),rs.getString(8),rs.getString(9),
						rs.getString(10),rs.getString(11),rs.getInt(12));
				list.add(order);
			}
			
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	//조회 (account_id,order_id)
public ArrayList<Order> getOrderList2(int order_id,int account_id){
		
		ArrayList<Order> list = new ArrayList<Order>();
		
		try {
			connect();
			
			String sql = "SELECT * FROM ORDERED WHERE ORDER_ID = ? AND ACCOUNT_ID = ? ORDER BY ORDER_DATE";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, order_id);
			pstmt.setInt(2, account_id);
			
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				Order order = new Order(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getString(4),
						rs.getInt(5),rs.getDate(6),rs.getInt(7),rs.getString(8),rs.getString(9),
						rs.getString(10),rs.getString(11),rs.getInt(12));
				list.add(order);
			}
			
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//조회 (조건, 단일)
public Order getOrder(int order_id){
	
	Order order = null;
	
	try {
		connect();
		
		String sql = "SELECT * FROM ORDERED WHERE ORDER_ID = ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, order_id);
		rs=pstmt.executeQuery();
		
		while(rs.next()) {
			 order = new Order(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getString(4),
					rs.getInt(5),rs.getDate(6),rs.getInt(7),rs.getString(8),rs.getString(9),
					rs.getString(10),rs.getString(11),rs.getInt(12));
		}
		
		rs.close();
		pstmt.close();
		con.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}catch(Exception e) {
		e.printStackTrace();
	}
	return order;
}


	//입력
	public void insertOrder(Order order) {
		try {
			connect();
			con.setAutoCommit(false);
			
			String sql = "INSERT INTO ORDERED VALUES (ORDER_ID_SEQ.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			
			//pstmt.setInt(1,  order.getOrder_id());
			pstmt.setInt(1,  order.getAccount_id());
			pstmt.setInt(2,  order.getProduct_id());
			pstmt.setString(3,  order.getColor());
			pstmt.setInt(4,  order.getOrder_count());
			pstmt.setString(5,  order.getOrder_date_s());
			pstmt.setInt(6,  order.getPost());
			pstmt.setString(7,  order.getAddress());
			pstmt.setString(8,  order.getAddress2());
			pstmt.setString(9,  order.getOrder_message());
			pstmt.setString(10,  order.getPay());
			pstmt.setInt(11,  order.getTotal());
			
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
		Dao_Order dao = new Dao_Order();
		ArrayList<Order> list = dao.getOrderList(100014);
//		System.out.println(list);

		ArrayList<Order> olist = dao.getOrderList2(9,451212);
		System.out.println(olist);
		
		/*
		 * dao.insertOrder(new Order(100112,114568,"브라운",11,"2021-02-14",125468,
		 * "고양시","파주시","경비실에 맡겨주세요","카드",23000));
		 */
	}

}
