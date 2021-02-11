package kr.co.semosi.admin.job.model.vo;

import java.sql.Date;

public class JobSearchApply {
	// 신청번호 
    private int applyNo;
    // 신청 게시글 번호 
    private String applyPostNo;
    // 신청자 회원 번호 
    private String membersNo;
    // 제목 
    private String title;
    // 내용 
    private String content;
    // 돌봄 아이 수 
    private int carePerson;
    // 돌봄 가능 연령 
    private String careAge;
    // 돌봄 주소 
    private String location;
    // 돌봄 유형 
    private String careType;
    // 시작일 
    private Date startDate;
    // 종료일 
    private Date endDate;
    // 희망근무요일 
    private String careDays;
    // 시간 
    private String careTime;
    // 원하는 활동 
    private String careActivity;

    public JobSearchApply() {
		super();
		// TODO Auto-generated constructor stub
	}

	public JobSearchApply(int applyNo, String applyPostNo, String membersNo, String title, String content,
			int carePerson, String careAge, String location, String careType, Date startDate, Date endDate,
			String careDays, String careTime, String careActivity) {
		super();
		this.applyNo = applyNo;
		this.applyPostNo = applyPostNo;
		this.membersNo = membersNo;
		this.title = title;
		this.content = content;
		this.carePerson = carePerson;
		this.careAge = careAge;
		this.location = location;
		this.careType = careType;
		this.startDate = startDate;
		this.endDate = endDate;
		this.careDays = careDays;
		this.careTime = careTime;
		this.careActivity = careActivity;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getCarePerson() {
        return carePerson;
    }

    public void setCarePerson(int carePerson) {
        this.carePerson = carePerson;
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

    public String getCareType() {
        return careType;
    }

    public void setCareType(String careType) {
        this.careType = careType;
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

    public String getCareActivity() {
        return careActivity;
    }

    public void setCareActivity(String careActivity) {
        this.careActivity = careActivity;
    }
}
