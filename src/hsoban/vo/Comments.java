package hsoban.vo;

public class Comments {
	private int comment_id;
	private int review_id;
	private String id;
	private String pass;
	private String content;

	// constructor
	public Comments() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Comments(int comment_id, int review_id, String id, String pass, String content) {
		super();
		this.comment_id = comment_id;
		this.review_id = review_id;
		this.id = id;
		this.pass = pass;
		this.content = content;
	}

	// getter and setter
	public int getComment_id() {
		return comment_id;
	}

	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}

	public int getReview_id() {
		return review_id;
	}

	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Comments [comment_id=" + comment_id + ", review_id=" + review_id + ", id=" + id + ", pass=" + pass
				+ ", content=" + content + "]";
	}

}
