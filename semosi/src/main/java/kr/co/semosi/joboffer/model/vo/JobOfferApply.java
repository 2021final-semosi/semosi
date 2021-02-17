package kr.co.semosi.joboffer.model.vo;

public class JobOfferApply {
	private int postNo;
	private String memberpNo;
	
	public JobOfferApply() {
		super();
		// TODO Auto-generated constructor stub
	}
	public JobOfferApply(int postNo, String memberpNo) {
		super();
		this.postNo = postNo;
		this.memberpNo = memberpNo;
	}
	
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public String getMemberpNo() {
		return memberpNo;
	}
	public void setMemberpNo(String memberpNo) {
		this.memberpNo = memberpNo;
	}
}
