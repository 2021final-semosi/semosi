package kr.co.semosi.member.model.vo;

import java.sql.Date;

public class SitterMember {

	private String memberNo;
	private String memberName;
	private String memberId;
	private String memberPw;
	private String phone;
	private String address;
	private char gender;
	private Date enrollDate;
	private Date endDate;
	private char endYN;
	private Date birthDay;
	private char documentYN;
	
	public SitterMember() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public SitterMember(String memberNo, String memberName, String memberId, String memberPw, String phone,
			String address, char gender, Date enrollDate, Date endDate, char endYN, Date birthDay, char documentYN) {
		super();
		this.memberNo = memberNo;
		this.memberName = memberName;
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.phone = phone;
		this.address = address;
		this.gender = gender;
		this.enrollDate = enrollDate;
		this.endDate = endDate;
		this.endYN = endYN;
		this.birthDay = birthDay;
		this.documentYN = documentYN;
	}
	
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
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
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public char getEndYN() {
		return endYN;
	}
	public void setEndYN(char endYN) {
		this.endYN = endYN;
	}
	public Date getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}
	public char getDocumentYN() {
		return documentYN;
	}
	public void setDocumentYN(char documentYN) {
		this.documentYN = documentYN;
	}
	
	
	
}
