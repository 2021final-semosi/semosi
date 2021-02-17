package kr.co.semosi.mypage.model.vo;

import java.sql.Date;

public class ParentReceiveReview {
	private String reviewNo;
	private String wirterP_No;
	private String reviewdS_No;
	private String content;
	private int grade;
	private char delYN;
	private Date writeDate;
	
	
	
	
	public ParentReceiveReview() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ParentReceiveReview(String reviewNo, String wirterP_No, String reviewdS_No, String content, int grade,
			char delYN, Date writeDate) {
		super();
		this.reviewNo = reviewNo;
		this.wirterP_No = wirterP_No;
		this.reviewdS_No = reviewdS_No;
		this.content = content;
		this.grade = grade;
		this.delYN = delYN;
		this.writeDate = writeDate;
	}
	public String getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(String reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getWirterP_No() {
		return wirterP_No;
	}
	public void setWirterP_No(String wirterP_No) {
		this.wirterP_No = wirterP_No;
	}
	public String getReviewdS_No() {
		return reviewdS_No;
	}
	public void setReviewdS_No(String reviewdS_No) {
		this.reviewdS_No = reviewdS_No;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public char getDelYN() {
		return delYN;
	}
	public void setDelYN(char delYN) {
		this.delYN = delYN;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	
}
