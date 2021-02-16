package hsoban.dao;
import java.sql.SQLException;
import java.util.ArrayList;
import hsoban.vo.Comments;
/*
CREATE TABLE COMMENTS (
	    COMMENT_ID NUMBER,
	    REVIEW_ID NUMBER,
	   ID VARCHAR2(200),
	   PASS VARCHAR2(200),
	   CONTENT VARCHAR2(4000),
	   CONSTRAINT COMMENT_PK PRIMARY KEY (COMMENT_ID)
);
	
	private int comment_id; 
	private int review_id;
	private String id;
	private String pass;
	private String content;
 */

public class Dao_Comments extends Dao {

//조회(전체, 리스트) - NOT USING
public ArrayList<Comments> getCommentsList() {

		ArrayList<Comments> clist = null;

		return clist;
	}
//조회(조건, 리스트)- review_id	
	public ArrayList<Comments> getCommentsList(int review_id) {

		ArrayList<Comments> clist = new ArrayList<Comments>();
		
		try {
			connect();
			
			String sql = "SELECT * FROM Comments WHERE REVIEW_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, review_id);

			rs = pstmt.executeQuery();	
			
			while (rs.next()) {
				Comments comments = new Comments(rs.getInt("COMMENT_ID"), rs.getInt("REVIEW_ID"), 
						   rs.getString("ID"), rs.getString("PASS"), rs.getString("CONTENT"));
				clist.add(comments);
			}
			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return clist;
		
	}
		   // 입력
	      public void insertComments(Comments comments) {

	         try {
	            connect();
	            con.setAutoCommit(false);

	            String sql = 
	            "INSERT INTO Comments VALUES (COMMENT_ID_SEQ.nextval, ?, ?, ?, ?)";
	            pstmt = con.prepareStatement(sql);
	            pstmt.setInt(1, comments.getReview_id());
	            pstmt.setString(2, comments.getId());
	            pstmt.setString(3, comments.getPass());
	            pstmt.setString(4, comments.getContent());
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
	      public void updateComments(Comments comments) {
	         try {
	            connect();
	            con.setAutoCommit(false);

	            String sql ="  UPDATE COMMENTS \r\n"
	            		+ " 	SET REVIEW_ID =?,\r\n"
	            		+ " 	    ID =?,\r\n"
	            		+ " 	    PASS =?,\r\n"
	            		+ " 	    CONTENT =?\r\n"
	            		+ "WHERE COMMENT_ID = ? ";
	            pstmt = con.prepareStatement(sql);
	            pstmt.setInt(1, comments.getReview_id());
	            pstmt.setString(2, comments.getId());
	            pstmt.setString(3, comments.getPass());
	            pstmt.setString(4, comments.getContent());
	            pstmt.setInt(5, comments.getComment_id());
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
	      public void deleteComments(int comment_id) {
	         try {
	            connect();
	            con.setAutoCommit(false);

	            String sql = "DELETE FROM COMMENTS WHERE COMMENT_ID = ?";
	            pstmt = con.prepareStatement(sql);
	            pstmt.setInt(1, comment_id);
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
		Dao_Comments dao = new Dao_Comments();
		//ArrayList<Comments> clist = dao.getCommentsList(1);
		//System.out.println(clist);
	
		//dao.insertComments(new Comments(3, 1, "temp", "aaa", "색이 예쁘네요"));  
		//dao.updateComments(new Comments(1, 1, "temp", "aaa", "색이 예쁘네요"));   
		dao.deleteComments(1);
		 
	}
}
