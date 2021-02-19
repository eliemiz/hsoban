package hsoban.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import hsoban.vo.Comments;

//	private int comment_id; 
//	private int review_id;
//	private String id;
//	private String pass;
//	private String content;

public class Dao_Comments extends Dao {

//	조회(전체, 리스트) 
	public ArrayList<Comments> getCommentsList() {

		ArrayList<Comments> list = new ArrayList<Comments>();

		try {
			connect();

			String sql = "SELECT * FROM COMMENTS";
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				Comments comments = new Comments(rs.getInt("COMMENT_ID"), rs.getInt("REVIEW_ID"), rs.getString("ID"),
						rs.getString("PASS"), rs.getString("CONTENT"));
				list.add(comments);
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

	// 조회(조건, 리스트)- review_id
	public ArrayList<Comments> getCommentsList(int review_id) {

		ArrayList<Comments> clist = new ArrayList<Comments>();

		try {
			connect();

			String sql = "SELECT * FROM COMMENTS WHERE REVIEW_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, review_id);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				Comments comments = new Comments(rs.getInt("COMMENT_ID"), rs.getInt("REVIEW_ID"), rs.getString("ID"),
						rs.getString("PASS"), rs.getString("CONTENT"));
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

	// 조회(조건, 단일)
	public Comments getComments(int comment_id) {
		Comments comment = new Comments();

		try {
			connect();

			String sql = "SELECT * FROM COMMENTS WHERE COMMENT_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, comment_id);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				comment = new Comments(rs.getInt("COMMENT_ID"), rs.getInt("REVIEW_ID"), rs.getString("ID"),
						rs.getString("PASS"), rs.getString("CONTENT"));
			}

			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return comment;
	}
	
	// 입력
	public void insertComments(Comments comments) {

		try {
			connect();
			con.setAutoCommit(false);

			String sql = "INSERT INTO Comments VALUES (COMMENT_ID_SEQ.NEXTVAL, ?, ?, ?, ?)";
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

	// 수정 - not using

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

	}
}
