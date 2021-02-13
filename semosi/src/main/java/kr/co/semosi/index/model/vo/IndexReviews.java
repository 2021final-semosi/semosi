package kr.co.semosi.index.model.vo;

import java.sql.Date;

public class IndexReviews {
	private int fileNo;
	private String originalName;
	private String memberpNo;
	private String address;
	private String pReview;
	private int grade;
	private Date writeDate;
	private char delYN;
	
	public IndexReviews() {
		super();
		// TODO Auto-generated constructor stub
	}
	public IndexReviews(int fileNo, String originalName, String memberpNo, String address, String pReview, int grade,
			Date writeDate, char delYN) {
		super();
		this.fileNo = fileNo;
		this.originalName = originalName;
		this.memberpNo = memberpNo;
		this.address = address;
		this.pReview = pReview;
		this.grade = grade;
		this.writeDate = writeDate;
		this.delYN = delYN;
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
	public String getMemberpNo() {
		return memberpNo;
	}
	public void setMemberpNo(String memberpNo) {
		this.memberpNo = memberpNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getpReview() {
		return pReview;
	}
	public void setpReview(String pReview) {
		this.pReview = pReview;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public char getDelYN() {
		return delYN;
	}
	public void setDelYN(char delYN) {
		this.delYN = delYN;
	}
}
