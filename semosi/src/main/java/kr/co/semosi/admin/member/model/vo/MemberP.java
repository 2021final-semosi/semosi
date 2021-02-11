package kr.co.semosi.admin.member.model.vo;

import java.sql.Date;

public class MemberP {
    // 회원번호
    private String memberpNo;
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

    public String getMemberpNo() {
	return memberpNo;
    }

    public void setMemberpNo(String memberpNo) {
	this.memberpNo = memberpNo;
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

    public MemberP(String memberpNo, String memberName, String memberId, String memberPw, String phone, String address,
	    String gender, Date enrollDate, Date endDate, String endYn, int birthDay) {
	super();
	this.memberpNo = memberpNo;
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
    }

    public MemberP() {
	super();
	// TODO Auto-generated constructor stub
    }

}
