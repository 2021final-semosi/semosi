package kr.co.semosi.jobsearch.model.vo;

import java.sql.Date;

public class JobSearchList {
	private int fileNo;
	private String originalName;
	private String postNo;
	private String memberpNo;
	private String memberName;
	private String title;
	private String content;
	private Date careBirth; // 원하는 돌봄나이
	private int carePerson;
	private String location;
	private String careType;
	private int hit;
	private Date startDate;
	private int pay;
	private Date writeDate;
	private char delYN;
	private String careActivity;
	private char preperGender;
	private String age;
	private Date endDate;
	private String careDays;
	private String careTime;

	private int nAge;
	private long months;

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

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
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

	public Date getCareBirth() {
		return careBirth;
	}

	public void setCareBirth(Date careBirth) {
		this.careBirth = careBirth;
	}

	public int getCarePerson() {
		return carePerson;
	}

	public void setCarePerson(int carePerson) {
		this.carePerson = carePerson;
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

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
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

	public String getCareActivity() {
		return careActivity;
	}

	public void setCareActivity(String careActivity) {
		this.careActivity = careActivity;
	}

	public char getPreperGender() {
		return preperGender;
	}

	public void setPreperGender(char preperGender) {
		this.preperGender = preperGender;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public int getnAge() {
		return nAge;
	}

	public void setnAge(int nAge) {
		this.nAge = nAge;
	}

	public long getMonths() {
		return months;
	}

	public void setMonths(long months) {
		this.months = months;
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

	public JobSearchList(int fileNo, String originalName, String postNo, String memberpNo, String memberName,
			String title, String content, Date careBirth, int carePerson, String location, String careType, int hit,
			Date startDate, int pay, Date writeDate, char delYN, String careActivity, char preperGender, String age,
			Date endDate, String careDays, String careTime, int nAge, long months) {
		super();
		this.fileNo = fileNo;
		this.originalName = originalName;
		this.postNo = postNo;
		this.memberpNo = memberpNo;
		this.memberName = memberName;
		this.title = title;
		this.content = content;
		this.careBirth = careBirth;
		this.carePerson = carePerson;
		this.location = location;
		this.careType = careType;
		this.hit = hit;
		this.startDate = startDate;
		this.pay = pay;
		this.writeDate = writeDate;
		this.delYN = delYN;
		this.careActivity = careActivity;
		this.preperGender = preperGender;
		this.age = age;
		this.endDate = endDate;
		this.careDays = careDays;
		this.careTime = careTime;
		this.nAge = nAge;
		this.months = months;
	}

	public JobSearchList() {
		super();
		// TODO Auto-generated constructor stub
	}

	

}
