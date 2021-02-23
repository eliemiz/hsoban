package hsoban.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import hsoban.vo.Qna;



/*
 CREATE TABLE QNA (
   QNA_ID NUMBER,
   PRODUCT_ID NUMBER,
   COLOR VARCHAR2(50),
   TITLE VARCHAR2(300),
   CONTENT VARCHAR2(4000),
   ACCOUNT_ID NUMBER,
   POSTING_DATE DATE,
   VIEWS NUMBER,
   ATTACH VARCHAR2(200),
   PREV_ID NUMBER,
   NEXT_ID NUMBER,
   CONSTRAINT QNA_PK PRIMARY KEY (QNA_ID)
);
 */
public class Dao_Qna extends Dao {
//조회(전체, 리스트) 
	public ArrayList<Qna> getQnaList() {

		ArrayList<Qna> qlist = new ArrayList<Qna>();
		
		try {
			connect();

			String sql = "SELECT * FROM QNA ORDER BY QNA_ID";
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				Qna qna = new Qna(rs.getInt("QNA_ID"), rs.getInt("PRODUCT_ID"), 
						   rs.getString("COLOR"), rs.getString("TITLE"), rs.getString("CONTENT"),
						   rs.getInt("ACCOUNT_ID"), rs.getDate("POSTING_DATE"), rs.getInt("VIEWS"),  
						   rs.getString("ATTACH"),  rs.getInt("PREV_ID"), rs.getInt("NEXT_ID"));
				qlist.add(qna);
			}

			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}


		return qlist;
	}
//조회(조건, 리스트)- product_id	
	public ArrayList<Qna> getQnaList(int product_id) {
		ArrayList<Qna> qlist = new ArrayList<Qna>();
		
		try {
			connect();
			
			String sql = "SELECT * FROM QNA WHERE PRODUCT_ID = ? ORDER BY QNA_ID";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, product_id);
			rs = pstmt.executeQuery();	
			
			while (rs.next()) {
				Qna qna = new Qna(rs.getInt("QNA_ID"), rs.getInt("PRODUCT_ID"), 
						   rs.getString("COLOR"), rs.getString("TITLE"), rs.getString("CONTENT"),
						   rs.getInt("ACCOUNT_ID"), rs.getDate("POSTING_DATE"), rs.getInt("VIEWS"),  
						   rs.getString("ATTACH"),  rs.getInt("PREV_ID"), rs.getInt("NEXT_ID"));
				qlist.add(qna);
			}
			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return qlist;
		
	}
	// 조회(조건, 단일) - qna_id
		public Qna getQna(int qna_id) {
			Qna qna = null;
			
			try {
				connect();
				
				String sql = "SELECT * FROM QNA WHERE QNA_ID = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, qna_id);
				rs = pstmt.executeQuery();	
				
				if (rs.next()) {
					qna = new Qna(rs.getInt("QNA_ID"), rs.getInt("PRODUCT_ID"), 
							   rs.getString("COLOR"), rs.getString("TITLE"), rs.getString("CONTENT"),
							   rs.getInt("ACCOUNT_ID"), rs.getDate("POSTING_DATE"), rs.getInt("VIEWS"),  
							   rs.getString("ATTACH"),  rs.getInt("PREV_ID"), rs.getInt("NEXT_ID"));
				
				}
				rs.close();
				pstmt.close();
				con.close();

			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}

			return qna;
			
		}
		/*
		 CREATE TABLE QNA (
		   QNA_ID NUMBER,
		   PRODUCT_ID NUMBER,
		   COLOR VARCHAR2(50),
		   TITLE VARCHAR2(300),
		   CONTENT VARCHAR2(4000),
		   ACCOUNT_ID NUMBER,
		   POSTING_DATE DATE,
		   VIEWS NUMBER,
		   ATTACH VARCHAR2(200),
		   PREV_ID NUMBER,
		   NEXT_ID NUMBER,
		   CONSTRAINT QNA_PK PRIMARY KEY (QNA_ID)
		);
		 */
		   // 입력
	      public void insertQna(Qna qna) {

	         try {
	            connect();
	            con.setAutoCommit(false);

	            String sql = 
	            "INSERT INTO Qna VALUES (QNA_ID_SEQ.nextval, ?, ?, ?, ?, ?, to_date(?, 'YYYY-MM-DD'), ?, ?, ?, ?)";
	            pstmt = con.prepareStatement(sql);
	          //pstmt.setInt(1, review.getQna_id());
	            pstmt.setInt(1, qna.getProduct_id());
	            pstmt.setString(2, qna.getColor());
	            pstmt.setString(3, qna.getTitle());
	            pstmt.setString(4, qna.getContent());
	            pstmt.setInt(5, qna.getAccount_id());
	            pstmt.setString(6, qna.getPosting_date_s());
	            pstmt.setInt(7, qna.getViews());
	            pstmt.setString(8, qna.getAttach());
	            pstmt.setInt(9, qna.getPrev_id());
	            pstmt.setInt(10, qna.getNext_id());
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
	      public void updateQna(Qna qna) {
	         try {
	            connect();
	            con.setAutoCommit(false);

	            String sql ="  UPDATE QNA \r\n"
	            		+ " 	SET PRODUCT_ID =?,\r\n"
	            		+ "		COLOR = ?,\r\n"
	            		+ "		TITLE = ?,\r\n"
	            		+ "		CONTENT = ?,\r\n"
	            		+ "		ATTACH = ?\r\n"
	            		+ "WHERE QNA_ID = ? ";
	            pstmt = con.prepareStatement(sql);
	            pstmt.setInt(1, qna.getProduct_id());
	            pstmt.setString(2, qna.getColor());
	            pstmt.setString(3, qna.getTitle());
	            pstmt.setString(4, qna.getContent());
	            pstmt.setString(5, qna.getAttach());
	            pstmt.setInt(6, qna.getQna_id());
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
	      public void deleteQna(int qna_id) {
	         try {
	            connect();
	            con.setAutoCommit(false);

	            String sql = "DELETE FROM QNA WHERE QNA_ID = ?";
	            pstmt = con.prepareStatement(sql);
	            pstmt.setInt(1, qna_id);
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
		Dao_Qna dao = new Dao_Qna();
		ArrayList<Qna> qlist = dao.getQnaList(1);
		System.out.println(qlist);
		//dao.deleteQna(1);
		//dao.updateQna(new Qna(0, 1000100, "진그레이", "재입고문의.", "다음 달에 입고예정입니다.", 100012,
		//		   "2021-02-08", 13, null, 1, 0));   
		//dao.updateQna(new Qna(0, 1000100, "진그레이", "재입고문의.", "다음 달에 입고예정입니다.", 100012,
		//		   "2021-02-08", 13, null, 1, 0));   
	}

}
