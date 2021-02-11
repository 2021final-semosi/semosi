package kr.co.semosi.admin.job.model.vo;

import java.sql.Date;

public class AdminOffer {
    private String postNo;
    private String title;
    private String memberpNo;
    private String content;
    private int age;

    private int carePerson;
    private String careAge;
    private String location;
    private char careType;
    private Date startDate;

    private Date endDate;
    private String careDays;
    private String careTime;
    private int pay;
    private String careActivity;

    private char preperGender;
    private String memberName;
    private String memberId;
    private String phone;
    private char gender;
    private String address;
    private Date writeDate;
    private char delYN;

    public String getPostNo() {
   return postNo;
    }

    public void setPostNo(String postNo) {
   this.postNo = postNo;
    }

    public String getTitle() {
   return title;
    }

    public void setTitle(String title) {
   this.title = title;
    }

    public String getMemberpNo() {
   return memberpNo;
    }

    public void setMemberpNo(String memberpNo) {
   this.memberpNo = memberpNo;
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

    public char getCareType() {
   return careType;
    }

    public void setCareType(char careType) {
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

    public char getPreperGender() {
   return preperGender;
    }

    public void setPreperGender(char preperGender) {
   this.preperGender = preperGender;
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

	public AdminOffer() {
   super();
   // TODO Auto-generated constructor stub
    }

    public AdminOffer(String postNo, String title, String memberpNo, String content, int age, int carePerson,
       String careAge, String location, char careType, Date startDate, Date endDate, String careDays,
       String careTime, int pay, String careActivity, char preperGender, String memberName, String memberId,
       String phone, char gender, String address, Date writeDate, char delYN) {
   super();
   this.postNo = postNo;
   this.title = title;
   this.memberpNo = memberpNo;
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
   this.memberName = memberName;
   this.memberId = memberId;
   this.phone = phone;
   this.gender = gender;
   this.address = address;
   this.writeDate = writeDate;
   this.delYN = delYN;
    }

}