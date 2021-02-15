package kr.co.semosi.mypage.model.vo;

import java.sql.Date;

public class JobOfferApply {
	private int applyNo;
	private String applyPostNo;
	private String memberNo;
	private String title;
	private String selfIntroduce;
	private char careType;
	private String careAge;
	private String location;
	private Date startDate;
	private Date endDate;
	private String careDats;
	private String careTime;
	private int pay;
	private char cctvYN;

	
	public JobOfferApply() {
		super();
		// TODO Auto-generated constructor stub
	}
	public JobOfferApply(int applyNo, String applyPostNo, String memberNo, String title, String selfIntroduce,
			char careType, String careAge, String location, Date startDate, Date endDate, String careDats,
			String careTime, int pay, char cctvYN) {
		super();
		this.applyNo = applyNo;
		this.applyPostNo = applyPostNo;
		this.memberNo = memberNo;
		this.title = title;
		this.selfIntroduce = selfIntroduce;
		this.careType = careType;
		this.careAge = careAge;
		this.location = location;
		this.startDate = startDate;
		this.endDate = endDate;
		this.careDats = careDats;
		this.careTime = careTime;
		this.pay = pay;
		this.cctvYN = cctvYN;
	}
	public int getApplyNo() {
		return applyNo;
	}
	public void setApplyNo(int applyNo) {
		this.applyNo = applyNo;
	}
	public String getApplyPostNo() {
		return applyPostNo;
	}
	public void setApplyPostNo(String applyPostNo) {
		this.applyPostNo = applyPostNo;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
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
	public String getCareDats() {
		return careDats;
	}
	public void setCareDats(String careDats) {
		this.careDats = careDats;
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
	
}
