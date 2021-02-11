package kr.co.semosi.admin.job.model.vo;

import java.sql.Date;

public class JobOfferApply {
	// 지원번호 
    private int applyNo;
    // 지원자 게시글 번호 
    private String applyPostNo;
    // 지원자 회원 번호 
    private String memberpNo;
    // 제목 
    private String title;
    // 자기소개 
    private String selfIntroduce;
    // 선호 돌봄 유형 
    private String careType;
    // 돌봄 가능 연령 
    private String careAge;
    // 활동 가능 지역 
    private String location;
    // 시작일 
    private Date startDate;
    // 종료일 
    private Date endDate;
    // 희망돌봄요일 
    private String careDays;
    // 시간 
    private String careTime;
    // 희망시급 
    private int pay;
    // CCTV동의여부 
    private String cctvYn;

    public JobOfferApply() {
		super();
		// TODO Auto-generated constructor stub
	}

	public JobOfferApply(int applyNo, String applyPostNo, String memberpNo, String title, String selfIntroduce,
			String careType, String careAge, String location, Date startDate, Date endDate, String careDays,
			String careTime, int pay, String cctvYn) {
		super();
		this.applyNo = applyNo;
		this.applyPostNo = applyPostNo;
		this.memberpNo = memberpNo;
		this.title = title;
		this.selfIntroduce = selfIntroduce;
		this.careType = careType;
		this.careAge = careAge;
		this.location = location;
		this.startDate = startDate;
		this.endDate = endDate;
		this.careDays = careDays;
		this.careTime = careTime;
		this.pay = pay;
		this.cctvYn = cctvYn;
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

    public String getMemberpNo() {
        return memberpNo;
    }

    public void setMemberpNo(String memberpNo) {
        this.memberpNo = memberpNo;
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

    public String getCareType() {
        return careType;
    }

    public void setCareType(String careType) {
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

    public String getCctvYn() {
        return cctvYn;
    }

    public void setCctvYn(String cctvYn) {
        this.cctvYn = cctvYn;
    }
}
