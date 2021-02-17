package hsoban.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import hsoban.vo.Notice;
import hsoban.vo.Temp;

public class Dao_Notice extends Dao {
	// 조회(전체)
	public ArrayList<Notice> getNoticeList() {
		ArrayList<Notice> nlist = new ArrayList<Notice>();
		try {
			connect();
			
			String sql = "SELECT * FROM NOTICE ORDER BY notice_id";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Notice notice = new Notice(rs.getInt(1), rs.getString(2),
								rs.getString(3), rs.getInt(4), rs.getString(5),
								rs.getInt(6));
				nlist.add(notice);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return nlist;	
	}
	
	// 조회(조건-단일) - notice_id
	public ArrayList<Notice> getNoticeList(int notice_id){
		ArrayList<Notice> nlist = new ArrayList<Notice>();
		try {
			connect();
			
			String sql = "SELCT * FROM NOTICE WHERE notice_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,notice_id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Notice notice = new Notice(rs.getInt(1), rs.getString(2),
								rs.getString(3), rs.getInt(4), rs.getDate(5), // posting_date get_string > date로 수정
								rs.getInt(6));
				nlist.add(notice);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return nlist;
	}
	
	// 입력
	/*
	 공지게시글 테이블
	NOTICE_ID NUMBER,
   	TITLE VARCHAR2(300),
   	CONTENT VARCHAR2(4000),
   	ACCOUNT_ID NUMBER,
   	POSTING_DATE DATE,
   	VIEWS NUMBER,
   	CONSTRAINT NOTICE_PK 
	공지글 입력 sql
	INSERT INTO NOTICE VALUES (1,'화소반 고객 감사 이벤트', '화소반 그릇과 함께 상차림 한 걸 올려주시면 저희가 7명께
	롱팟 스테이크접시 사각원찬기 小 긴일자찬기를 드립니다!!많이 참여해 주세요^^', 1, '운영자', '2021/02/03', 130, 'event.jpg');
	  */
	public void insertNotice(Notice notice) {
		try {
			connect();
			con.setAutoCommit(false);
			String sql = "INSERT INTO NOTICE VALUES (NOTICE_ID_SEQ.nextval, ?, ?, ?, ?, ?, ?)"; //NOTICE_ID_SEQ.nextval 추가
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, notice.getNotice_id());
			pstmt.setString(2, notice.getTitle());
			pstmt.setString(3, notice.getContent());
			pstmt.setInt(4, notice.getAccount_id());
			pstmt.setString(5, notice.getPosting_date_s());
			pstmt.setInt(6, notice.getViews());
			
			rs = pstmt.executeQuery();
			con.commit();
		
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				con.rollback();
			} catch(SQLException e1) {
				e1.printStackTrace();
			}
		} catch(Exception e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}
	
	// 수정
	/*
	공지수정 sql
	UPDATE NOTICE SET
	CONTENT = '화소반 고객 감사 1차 이벤트'
	WHERE ACCOUNT_ID = 1 AND NOTICE_ID=1;
	*/
	public void updateNotice(Notice notice) {
		try {
			connect();
			con.setAutoCommit(false);
			
			String sql = "UPDATE NOTICE SET\r\n"
					+ " CONTENT = ? \r\n"
					+ "	WHERE NOTICE_ID=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, notice.getContent());
			pstmt.setInt(2, notice.getNotice_id());
			pstmt.executeQuery();
			con.commit();
			
			pstmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				con.rollback();
			} catch(SQLException e1) {
				e1.printStackTrace();
			}
		} catch(Exception e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch(SQLException e1) {
				e1.printStackTrace();
			}
		}
	}
	
	// 삭제
	/*
	공지삭제 sql
	DELETE FROM NOTICE 
	WHERE ACCOUNT_ID = 1 AND NOTICE_ID=1;
	*/
	public void deleteNotice(int notice_id) {
		try {
			connect();
			con.setAutoCommit(false);
			
			String sql = "DELETE FROM NOTICE \r\n"
					+ "	WHERE NOTICE_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, notice_id);
			pstmt.executeQuery();
			con.commit();
			
			pstmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				con.rollback();
			} catch(SQLException e1) {
				e1.printStackTrace();
			}
		} catch(Exception e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch(SQLException e1) {
				e1.printStackTrace();
			}
		}
	}
	
	public static void main(String[] args) {
		Dao_Notice dao = new Dao_Notice();
		ArrayList<Notice> nlist = dao.getNoticeList();
		System.out.println(nlist);
		// dao.insertNotice(new Notice(101,"테스트타이틀1","테스트1",101,"2020/10/10",101));
		//  dao.deleteNotice(101);
		 //dao.updateNotice(new Notice(101, "테스트타이틀1","수정테스트",101,"2020/10/10",101));	
	}	
}
