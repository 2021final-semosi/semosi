package kr.co.semosi.joboffer.model.vo;

import java.sql.Date;

public class JobOfferPost {
	private int fileNo;
	private String originalName;
	private String postNo;
	private String membersNo;
	private String title;
	private String selfIntroduce;
	private String careType;
	private String careAge;
	private String careActivity;
	private String location;
	private Date startDate;
	private Date endDate;
	private String careDays;
	private String careTime;
	private int pay;
	private char cctvYN;
	private Date writeDate;
	private int hit;
	private String memberName;
	private String phone;
	private char gender;
	private Date birthDay;
	private int age;
	private char certFAYN;
	private char certHEYN;
	private char certREYN;
	private char certTEYN;
	private int avgGrade;
	
	public JobOfferPost() {
		super();
		// TODO Auto-generated constructor stub
	}
	public JobOfferPost(int fileNo, String originalName, String postNo, String membersNo, String title,
			String selfIntroduce, String careType, String careAge, String careActivity, String location, Date startDate,
			Date endDate, String careDays, String careTime, int pay, char cctvYN, Date writeDate, int hit,
			String memberName, String phone, char gender, Date birthDay, int age, char certFAYN, char certHEYN,
			char certREYN, char certTEYN, int avgGrade) {
		super();
		this.fileNo = fileNo;
		this.originalName = originalName;
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
		this.writeDate = writeDate;
		this.hit = hit;
		this.memberName = memberName;
		this.phone = phone;
		this.gender = gender;
		this.birthDay = birthDay;
		this.age = age;
		this.certFAYN = certFAYN;
		this.certHEYN = certHEYN;
		this.certREYN = certREYN;
		this.certTEYN = certTEYN;
		this.avgGrade = avgGrade;
	}
	
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
	public char getCctvYN() {
		return cctvYN;
	}
	public void setCctvYN(char cctvYN) {
		this.cctvYN = cctvYN;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
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
	public Date getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public char getCertFAYN() {
		return certFAYN;
	}
	public void setCertFAYN(char certFAYN) {
		this.certFAYN = certFAYN;
	}
	public char getCertHEYN() {
		return certHEYN;
	}
	public void setCertHEYN(char certHEYN) {
		this.certHEYN = certHEYN;
	}
	public char getCertREYN() {
		return certREYN;
	}
	public void setCertREYN(char certREYN) {
		this.certREYN = certREYN;
	}
	public char getCertTEYN() {
		return certTEYN;
	}
	public void setCertTEYN(char certTEYN) {
		this.certTEYN = certTEYN;
	}
	public int getAvgGrade() {
		return avgGrade;
	}
	public void setAvgGrade(int avgGrade) {
		this.avgGrade = avgGrade;
	}
}