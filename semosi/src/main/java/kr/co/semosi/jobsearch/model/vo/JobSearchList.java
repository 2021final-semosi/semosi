package kr.co.semosi.jobsearch.model.vo;

import java.sql.Date;

public class JobSearchList {
	private int fileNo;
	private String originalName;
	private String memberpNo;
	private String title;
	private Date careBirth;
	private int age;
	private long months;
	private String location;
	private String careType;
	private Date startDate;
	private int pay;
	private Date writeDate;
	
	public JobSearchList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public JobSearchList(int fileNo, String originalName, String memberpNo, String title, Date careBirth, int age,
			long months, String location, String careType, Date startDate, int pay, Date writeDate) {
		super();
		this.fileNo = fileNo;
		this.originalName = originalName;
		this.memberpNo = memberpNo;
		this.title = title;
		this.careBirth = careBirth;
		this.age = age;
		this.months = months;
		this.location = location;
		this.careType = careType;
		this.startDate = startDate;
		this.pay = pay;
		this.writeDate = writeDate;
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
	public Date getCareBirth() {
		return careBirth;
	}
	public void setCareBirth(Date careBirth) {
		this.careBirth = careBirth;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public long getMonths() {
		return months;
	}
	public void setMonths(long months) {
		this.months = months;
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
}
