package kr.co.semosi.admin.job.model.vo;

import java.sql.Date;

public class JobSearch {
	 // 게시글번호 
    private String postNo;
    // 회원 번호 
    private String membersNo;
    // 제목 
    private String title;
    // 자기소개 
    private String selfIntroduce;
    // 선호 돌봄 유형 
    private String careType;
    // 돌봄 가능 연령 
    private String careAge;
    // 가능한 활동 
    private String careActivity;
    // 활동 가능 지역 
    private String location;
    // 시작일 
    private Date startDate;
    // 종료일 
    private Date endDate;
    // 희망근무요일 
    private String careDays;
    // 시간 
    private String careTime;
    // 희망시급 
    private int pay;
    // CCTV동의여부 
    private String cctvYn;
    // 작성일
    private Date writeDate;
    // 삭제여부
    private char delYN;

    public JobSearch() {
		super();
		// TODO Auto-generated constructor stub
	}

	public JobSearch(String postNo, String membersNo, String title, String selfIntroduce, String careType,
			String careAge, String careActivity, String location, Date startDate, Date endDate, String careDays,
			String careTime, int pay, String cctvYn, Date writeDate, char delYN) {
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
		this.cctvYn = cctvYn;
		this.writeDate = writeDate;
		this.delYN = delYN;
	}

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

    public String getCctvYn() {
        return cctvYn;
    }

    public void setCctvYn(String cctvYn) {
        this.cctvYn = cctvYn;
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
