package kr.co.semosi.mypage.model.vo;

import java.sql.Date;

public class ApplicationReceived {
	private int fileNo;
	private String originalName;
	private int applyNo;
	private int applyPostNo;
	private String memberpNo;
	private Date applyDate;
	private String myNo;
	private String memberName;
	private String address;
	private char gender;
	private String phone;
	private Date birthDay;
	private int age;
	private int postNo;
	private int avgGrade;
	
	public ApplicationReceived() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ApplicationReceived(int fileNo, String originalName, int applyNo, int applyPostNo, String memberpNo,
			Date applyDate, String myNo, String memberName, String address, char gender, String phone, Date birthDay,
			int age, int postNo, int avgGrade) {
		super();
		this.fileNo = fileNo;
		this.originalName = originalName;
		this.applyNo = applyNo;
		this.applyPostNo = applyPostNo;
		this.memberpNo = memberpNo;
		this.applyDate = applyDate;
		this.myNo = myNo;
		this.memberName = memberName;
		this.address = address;
		this.gender = gender;
		this.phone = phone;
		this.birthDay = birthDay;
		this.age = age;
		this.postNo = postNo;
		this.avgGrade = avgGrade;
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
	public int getApplyNo() {
		return applyNo;
	}
	public void setApplyNo(int applyNo) {
		this.applyNo = applyNo;
	}
	public int getApplyPostNo() {
		return applyPostNo;
	}
	public void setApplyPostNo(int applyPostNo) {
		this.applyPostNo = applyPostNo;
	}
	public String getMemberpNo() {
		return memberpNo;
	}
	public void setMemberpNo(String memberpNo) {
		this.memberpNo = memberpNo;
	}
	public Date getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}
	public String getMyNo() {
		return myNo;
	}
	public void setMyNo(String myNo) {
		this.myNo = myNo;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public int getAvgGrade() {
		return avgGrade;
	}
	public void setAvgGrade(int avgGrade) {
		this.avgGrade = avgGrade;
	}
}
