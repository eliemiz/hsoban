package hsoban.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import hsoban.vo.Cart;
import hsoban.vo.Review;

/*
 CREATE TABLE REVIEW (
   REVIEW_ID NUMBER,
   PRODUCT_ID NUMBER,
   COLOR VARCHAR2(50),
   TITLE VARCHAR2(300),
   CONTENT VARCHAR2(4000),
   ACCOUNT_ID NUMBER,
   POSTING_DATE DATE,
   VIEWS NUMBER,
   ATTACH VARCHAR2(200),
   CONSTRAINT REVIEW_PK PRIMARY KEY (REVIEW_ID)
);

 */
public class Dao_Review extends Dao {
	
//조회(전체, 리스트) 
	public ArrayList<Review> getReviewList() {

		ArrayList<Review> rlist = new ArrayList<Review>();

		try {
			connect();

			String sql = "SELECT * FROM REVIEW ORDER BY REVIEW_ID";
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				Review review = new Review(rs.getInt("REVIEW_ID"), rs.getInt("PRODUCT_ID"), 
						   rs.getString("COLOR"), rs.getString("TITLE"), rs.getString("CONTENT"),
						   rs.getInt("ACCOUNT_ID"), rs.getDate("POSTING_DATE"),
						   rs.getInt("VIEWS"),  rs.getString("ATTACH"));
				rlist.add(review);
			}

			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return rlist;
	}
	
//조회(조건, 리스트)- product_id
	public ArrayList<Review> getReviewList(int product_id) {	
		ArrayList<Review> rlist = new ArrayList<Review>();
		try {
			connect();
			
			String sql = "SELECT * FROM REVIEW WHERE PRODUCT_ID = ? ORDER BY REVIEW_ID";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, product_id);

			rs = pstmt.executeQuery();	
			
			while (rs.next()) {
				Review review = new Review(rs.getInt("REVIEW_ID"), rs.getInt("PRODUCT_ID"), 
						   rs.getString("COLOR"), rs.getString("TITLE"), rs.getString("CONTENT"),
						   rs.getInt("ACCOUNT_ID"), rs.getDate("POSTING_DATE"),
						   rs.getInt("VIEWS"),  rs.getString("ATTACH"));
				rlist.add(review);
			}
			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return rlist;
		
	}
// 조회(조건, 단일) - review_id
	public Review getReview(int review_id) {

		Review review = null;
		
		try {
			connect();
			
			String sql = "SELECT * FROM REVIEW WHERE REVIEW_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, review_id);

			rs = pstmt.executeQuery();	
			
			if(rs.next()) {
				review = new Review(rs.getInt("REVIEW_ID"), rs.getInt("PRODUCT_ID"), 
						   rs.getString("COLOR"), rs.getString("TITLE"), rs.getString("CONTENT"),
						   rs.getInt("ACCOUNT_ID"), rs.getDate("POSTING_DATE"),
						   rs.getInt("VIEWS"),  rs.getString("ATTACH"));
				
			}
			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return review;
		
	}

	// 입력
		public void insertReview(Review review) {

			try {
				connect();
				con.setAutoCommit(false);

				String sql = "INSERT INTO Review VALUES (REVIEW_ID_SEQ.nextval, ?, ?, ?, ?, ?, to_date(?, 'YYYY-MM-DD'), ?, ?)";
				pstmt = con.prepareStatement(sql);
				//pstmt.setInt(1, review.getReview_id());
				pstmt.setInt(1, review.getProduct_id());
				pstmt.setString(2, review.getColor());
				pstmt.setString(3, review.getTitle());
				pstmt.setString(4, review.getContent());
				pstmt.setInt(5, review.getAccount_id());
				pstmt.setString(6, review.getPosting_date_s());
				pstmt.setInt(7, review.getViews());
				pstmt.setString(8, review.getAttach());
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
		public void updateReview(Review review) {
			try {
				connect();
				con.setAutoCommit(false);

				String sql =" UPDATE REVIEW\r\n"
						+ "	SET PRODUCT_ID =?,\r\n"
						+ "		COLOR = ?,\r\n"
						+ "		TITLE = ?,\r\n"
						+ "		CONTENT = ?,\r\n"
						+ "		ATTACH = ?\r\n"
						+ "WHERE REVIEW_ID = ? ";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, review.getProduct_id());
				pstmt.setString(2, review.getColor());
				pstmt.setString(3, review.getTitle());
				pstmt.setString(4, review.getContent());
				pstmt.setString(5, review.getAttach());
				pstmt.setInt(6, review.getReview_id());
				pstmt.executeUpdate();
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
		public void deleteReview(int review_id) {
			try {
				connect();
				con.setAutoCommit(false);

				String sql = "DELETE FROM REVIEW WHERE REVIEW_ID = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, review_id);
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
		Dao_Review dao = new Dao_Review();
		ArrayList<Review> rlist = dao.getReviewList(1);
      System.out.println(rlist);
      //dao.deleteReview(1);
      dao.insertReview(new Review(0, 1000100, "진그레이", "만족합니다.", "예뻐요.뻥이에요", 100012,"2021-02-08", 13, "event.jpg"));
      //dao.updateReview(new Review(2, 1000100, "진그레이", "만족합니다.", "예뻐요.뻥이에요222수정", 100012,"2021-02-08", 13, "event.jpg"));
		
		
	}

}
