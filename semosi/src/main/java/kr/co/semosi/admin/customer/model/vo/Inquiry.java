package kr.co.semosi.admin.customer.model.vo;

public class Inquiry {
	private int postNo;
	private String title;
	private String question;
	private String pId;
	private String sId;
	private String answer;
	
	public Inquiry() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Inquiry(int postNo, String title, String question, String pId, String sId, String answer) {
		super();
		this.postNo = postNo;
		this.title = title;
		this.question = question;
		this.pId = pId;
		this.sId = sId;
		this.answer = answer;
	}
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getPId() {
		return pId;
	}
	public void setPId(String pId) {
		this.pId = pId;
	}
	public String getSId() {
		return sId;
	}
	public void setSId(String sId) {
		this.sId = sId;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}

}
