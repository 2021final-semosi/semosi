package kr.co.semosi.joboffer.model.vo;

import java.sql.Date;

public class JobOfferList {
	private String postNo;
	private int fileNo;
	private String originalName;
	private String memberNo;
	private String location;
	private int pay;
	private Date writeDate;
	private String memberName;
	private Date birthDay;
	private char certFaYN;
	private char certHeYN;
	private char certReYN;
	private char certTeYN;
	private int avgGrade;
	private int age;
	
	public JobOfferList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public JobOfferList(String postNo, int fileNo, String originalName, String memberNo, String location, int pay,
			Date writeDate, String memberName, Date birthDay, char certFaYN, char certHeYN, char certReYN,
			char certTeYN, int avgGrade, int age) {
		super();
		this.postNo = postNo;
		this.fileNo = fileNo;
		this.originalName = originalName;
		this.memberNo = memberNo;
		this.location = location;
		this.pay = pay;
		this.writeDate = writeDate;
		this.memberName = memberName;
		this.birthDay = birthDay;
		this.certFaYN = certFaYN;
		this.certHeYN = certHeYN;
		this.certReYN = certReYN;
		this.certTeYN = certTeYN;
		this.avgGrade = avgGrade;
		this.age = age;
	}
	
	public String getPostNo() {
		return postNo;
	}
	public void setPostNo(String postNo) {
		this.postNo = postNo;
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
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public Date getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}
	public char getCertFaYN() {
		return certFaYN;
	}
	public void setCertFaYN(char certFaYN) {
		this.certFaYN = certFaYN;
	}
	public char getCertHeYN() {
		return certHeYN;
	}
	public void setCertHeYN(char certHeYN) {
		this.certHeYN = certHeYN;
	}
	public char getCertReYN() {
		return certReYN;
	}
	public void setCertReYN(char certReYN) {
		this.certReYN = certReYN;
	}
	public char getCertTeYN() {
		return certTeYN;
	}
	public void setCertTeYN(char certTeYN) {
		this.certTeYN = certTeYN;
	}
	public int getAvgGrade() {
		return avgGrade;
	}
	public void setAvgGrade(int avgGrade) {
		this.avgGrade = avgGrade;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
}
