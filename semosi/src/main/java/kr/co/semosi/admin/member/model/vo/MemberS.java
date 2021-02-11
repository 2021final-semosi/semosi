package kr.co.semosi.admin.member.model.vo;

import java.sql.Date;

//시터회원 
public class MemberS {

    // 회원번호
    private String membersNo;

    // 이름
    private String memberName;

    // 아이디
    private String memberId;

    // 비밀번호
    private String memberPw;

    // 전화번호
    private String phone;

    // 주소
    private String address;

    // 성별
    private String gender;

    // 가입일
    private Date enrollDate;

    // 탈퇴일
    private Date endDate;

    // 탈퇴여부
    private String endYn;

    private int birthDay;

    private String documentYN;

    public String getMembersNo() {
	return membersNo;
    }

    public void setMembersNo(String membersNo) {
	this.membersNo = membersNo;
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

    public String getGender() {
	return gender;
    }

    public void setGender(String gender) {
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

    public String getEndYn() {
	return endYn;
    }

    public void setEndYn(String endYn) {
	this.endYn = endYn;
    }

    public int getBirthDay() {
	return birthDay;
    }

    public void setBirthDay(int birthDay) {
	this.birthDay = birthDay;
    }

    public String getDocumentYN() {
	return documentYN;
    }

    public void setDocumentYN(String documentYN) {
	this.documentYN = documentYN;
    }

    public MemberS(String membersNo, String memberName, String memberId, String memberPw, String phone, String address,
	    String gender, Date enrollDate, Date endDate, String endYn, int birthDay, String documentYN) {
	super();
	this.membersNo = membersNo;
	this.memberName = memberName;
	this.memberId = memberId;
	this.memberPw = memberPw;
	this.phone = phone;
	this.address = address;
	this.gender = gender;
	this.enrollDate = enrollDate;
	this.endDate = endDate;
	this.endYn = endYn;
	this.birthDay = birthDay;
	this.documentYN = documentYN;
    }

    public MemberS() {
	super();
	// TODO Auto-generated constructor stub
    }

}