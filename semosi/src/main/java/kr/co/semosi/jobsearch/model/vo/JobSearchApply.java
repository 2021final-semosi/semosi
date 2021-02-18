package kr.co.semosi.jobsearch.model.vo;

public class JobSearchApply {
	private int postNo;
	private String membersNo;
	
	public JobSearchApply() {
		super();
		// TODO Auto-generated constructor stub
	}
	public JobSearchApply(int postNo, String membersNo) {
		super();
		this.postNo = postNo;
		this.membersNo = membersNo;
	}
	
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public String getMembersNo() {
		return membersNo;
	}
	public void setMembersNo(String membersNo) {
		this.membersNo = membersNo;
	}
}
