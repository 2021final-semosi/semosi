package kr.co.semosi.admin.job.model.vo;

import java.sql.Date;

public class AdminSearch {
    private String postNo;
    private String membersNo;
    private String title;
    private String selfIntroduce;
    private char careType;

    private String careAge;
    private String careActivity;
    private String location;
    private Date startDate;
    private Date endDate;

    private String careDays;
    private String careTime;
    private int pay;
    private char cctvYN;
    private String memberName;
    private String memberId;
    private String phone;
    private char gender;
    private String address;

    public String getPostNo() {
	return postNo;
    }

    public void setPostNo(String postNo) {
	this.postNo = postNo;
    }

    public String getMembersNo() {
	return membersNo;
    }

    public void setMembersNo(String membersNo) {
	this.membersNo = membersNo;
    }

    public String getTitle() {
	return title;
    }

    public void setTitle(String title) {
	this.title = title;
    }

    public String getSelfIntroduce() {
	return selfIntroduce;
    }

    public void setSelfIntroduce(String selfIntroduce) {
	this.selfIntroduce = selfIntroduce;
    }

    public char getCareType() {
	return careType;
    }

    public void setCareType(char careType) {
	this.careType = careType;
    }

    public String getCareAge() {
	return careAge;
    }

    public void setCareAge(String careAge) {
	this.careAge = careAge;
    }

    public String getCareActivity() {
	return careActivity;
    }

    public void setCareActivity(String careActivity) {
	this.careActivity = careActivity;
    }

    public String getLocation() {
	return location;
    }

    public void setLocation(String location) {
	this.location = location;
    }

    public Date getStartDate() {
	return startDate;
    }

    public void setStartDate(Date startDate) {
	this.startDate = startDate;
    }

    public Date getEndDate() {
	return endDate;
    }

    public void setEndDate(Date endDate) {
	this.endDate = endDate;
    }

    public String getCareDays() {
	return careDays;
    }

    public void setCareDays(String careDays) {
	this.careDays = careDays;
    }

    public String getCareTime() {
	return careTime;
    }

    public void setCareTime(String careTime) {
	this.careTime = careTime;
    }

    public int getPay() {
	return pay;
    }

    public void setPay(int pay) {
	this.pay = pay;
    }

    public char getCctvYN() {
	return cctvYN;
    }

    public void setCctvYN(char cctvYN) {
	this.cctvYN = cctvYN;
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

    public String getPhone() {
	return phone;
    }

    public void setPhone(String phone) {
	this.phone = phone;
    }

    public char getGender() {
	return gender;
    }

    public void setGender(char gender) {
	this.gender = gender;
    }

    public String getAddress() {
	return address;
    }

    public void setAddress(String address) {
	this.address = address;
    }

    public AdminSearch(String postNo, String membersNo, String title, String selfIntroduce, char careType,
	    String careAge, String careActivity, String location, Date startDate, Date endDate, String careDays,
	    String careTime, int pay, char cctvYN, String memberName, String memberId, String phone, char gender,
	    String address) {
	super();
	this.postNo = postNo;
	this.membersNo = membersNo;
	this.title = title;
	this.selfIntroduce = selfIntroduce;
	this.careType = careType;
	this.careAge = careAge;
	this.careActivity = careActivity;
	this.location = location;
	this.startDate = startDate;
	this.endDate = endDate;
	this.careDays = careDays;
	this.careTime = careTime;
	this.pay = pay;
	this.cctvYN = cctvYN;
	this.memberName = memberName;
	this.memberId = memberId;
	this.phone = phone;
	this.gender = gender;
	this.address = address;
    }

    public AdminSearch() {
	super();
	// TODO Auto-generated constructor stub
    }

}
