package kr.co.semosi.admin.job.model.vo;

import java.sql.Date;

public class JobOffer {
	// 게시글번호
	private String postNo;
	// 회원번호
	private String memberpNo;
	// 제목
	private String title;
	// 신청내용(요청사항)
	private String content;
	// 원하는시터나이
	private int age;
	// 돌봄아이수
	private int carePerson;
	// 돌봄아이연령
	private String careAge;
	// 돌봄주소
	private String location;
	// 돌봄유형
	private String careType;
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
	// 원하는 활동
	private String careActivity;
	// 원하는 시터 성별
	private String preperGender;
	// 작성일
	private Date writeDate;
	// 삭제여부
	private char delYN;

	public JobOffer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public JobOffer(String postNo, String memberpNo, String title, String content, int age, int carePerson,
			String careAge, String location, String careType, Date startDate, Date endDate, String careDays,
			String careTime, int pay, String careActivity, String preperGender, Date writeDate, char delYN) {
		super();
		this.postNo = postNo;
		this.memberpNo = memberpNo;
		this.title = title;
		this.content = content;
		this.age = age;
		this.carePerson = carePerson;
		this.careAge = careAge;
		this.location = location;
		this.careType = careType;
		this.startDate = startDate;
		this.endDate = endDate;
		this.careDays = careDays;
		this.careTime = careTime;
		this.pay = pay;
		this.careActivity = careActivity;
		this.preperGender = preperGender;
		this.writeDate = writeDate;
		this.delYN = delYN;
	}

	public String getPostNo() {
		return postNo;
	}

	public void setPostNo(String postNo) {
		this.postNo = postNo;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
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

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	public String getCareActivity() {
		return careActivity;
	}

	public void setCareActivity(String careActivity) {
		this.careActivity = careActivity;
	}

	public String getPreperGender() {
		return preperGender;
	}

	public void setPreperGender(String preperGender) {
		this.preperGender = preperGender;
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
