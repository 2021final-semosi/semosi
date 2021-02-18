package kr.co.semosi.mypage.model.vo;

import java.sql.Date;

public class ReceiveOfferReview {
	private int postNo;
	private int reviewNo;
	private String memberName;
	private Date writeDate;
	private int grade;
	private String content;
	private int fileNo;
	private String originalName;
	
	public ReceiveOfferReview() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReceiveOfferReview(int postNo, int reviewNo, String memberName, 
			Date writeDate, int grade, String content, int fileNo, String originalName) {
		super();
		this.postNo = postNo;
		this.reviewNo = reviewNo;
		this.memberName = memberName;
		this.writeDate = writeDate;
		this.grade = grade;
		this.content = content;
		this.fileNo = fileNo;
		this.originalName = originalName;
	}
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	
}
