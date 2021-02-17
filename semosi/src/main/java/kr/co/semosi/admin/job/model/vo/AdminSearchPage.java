package kr.co.semosi.admin.job.model.vo;

import java.sql.Date;

public class AdminSearchPage {
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
    private String memberName;
    private String memberId;
    private String phone;
    private char gender;
    private String address;
    private Date writeDate;
    private char delYN;
    
    private char certFAYN;
    private char fDel;
    private char certHEYN;
    private char hDel;
    private char certREYN;
    private char rDel;
    private char certTEYN;
    private char tDel;
   
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

	public char getCertFAYN() {
		return certFAYN;
	}

	public void setCertFAYN(char certFAYN) {
		this.certFAYN = certFAYN;
	}

	public char getfDel() {
		return fDel;
	}

	public void setfDel(char fDel) {
		this.fDel = fDel;
	}

	public char getCertHEYN() {
		return certHEYN;
	}

	public void setCertHEYN(char certHEYN) {
		this.certHEYN = certHEYN;
	}

	public char gethDel() {
		return hDel;
	}

	public void sethDel(char hDel) {
		this.hDel = hDel;
	}

	public char getCertREYN() {
		return certREYN;
	}

	public void setCertREYN(char certREYN) {
		this.certREYN = certREYN;
	}

	public char getrDel() {
		return rDel;
	}

	public void setrDel(char rDel) {
		this.rDel = rDel;
	}

	public char getCertTEYN() {
		return certTEYN;
	}

	public void setCertTEYN(char certTEYN) {
		this.certTEYN = certTEYN;
	}

	public char gettDel() {
		return tDel;
	}

	public void settDel(char tDel) {
		this.tDel = tDel;
	}

	public AdminSearchPage(String postNo, String membersNo, String title, String selfIntroduce, String careType,
       String careAge, String careActivity, String location, Date startDate, Date endDate, String careDays,
       String careTime, int pay, char cctvYN, String memberName, String memberId, String phone, char gender,
       String address, Date wirteDate, char delYN, char certFAYN, char fDel, char certHEYN, char hDel,
       char certREYN, char rDel, char certTEYN, char tDel) {
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
   this.writeDate = writeDate;
   this.certFAYN = certFAYN;
   this.fDel = fDel;
   this.certHEYN = certHEYN;
   this.hDel = hDel;
   this.certREYN = certREYN;
   this.rDel = rDel;
   this.certTEYN = certTEYN;
   this.tDel = tDel;
    }

    public AdminSearchPage() {
   super();
   // TODO Auto-generated constructor stub
    }
}