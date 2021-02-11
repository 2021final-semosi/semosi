package kr.co.semosi.admin.member.model.vo;

public class CertifyView {
    private String membersNo;
    private String memberName;
    private String memberId;
    private String phone;
    private char gender;
    private String address;

    private String imageFANo;
    private String imageFaPath;
    private char cretFAYN;

    private String imageHENo;
    private String imageHePath;
    private char cretHEYN;

    private String imageRENo;
    private String imageRePath;
    private char cretREYN;

    private String imageTENo;
    private String imageTePath;
    private char cretTEYN;

    public String getMembersNo() {
	return membersNo;
    }

    public void setMembersNo(String membersNo) {
	this.membersNo = membersNo;
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

    public String getImageFANo() {
	return imageFANo;
    }

    public void setImageFANo(String imageFANo) {
	this.imageFANo = imageFANo;
    }

    public String getImageFaPath() {
	return imageFaPath;
    }

    public void setImageFaPath(String imageFaPath) {
	this.imageFaPath = imageFaPath;
    }

    public char getCretFAYN() {
	return cretFAYN;
    }

    public void setCretFAYN(char cretFAYN) {
	this.cretFAYN = cretFAYN;
    }

    public String getImageHENo() {
	return imageHENo;
    }

    public void setImageHENo(String imageHENo) {
	this.imageHENo = imageHENo;
    }

    public String getImageHePath() {
	return imageHePath;
    }

    public void setImageHePath(String imageHePath) {
	this.imageHePath = imageHePath;
    }

    public char getCretHEYN() {
	return cretHEYN;
    }

    public void setCretHEYN(char cretHEYN) {
	this.cretHEYN = cretHEYN;
    }

    public String getImageRENo() {
	return imageRENo;
    }

    public void setImageRENo(String imageRENo) {
	this.imageRENo = imageRENo;
    }

    public String getImageRePath() {
	return imageRePath;
    }

    public void setImageRePath(String imageRePath) {
	this.imageRePath = imageRePath;
    }

    public char getCretREYN() {
	return cretREYN;
    }

    public void setCretREYN(char cretREYN) {
	this.cretREYN = cretREYN;
    }

    public String getImageTENo() {
	return imageTENo;
    }

    public void setImageTENo(String imageTENo) {
	this.imageTENo = imageTENo;
    }

    public String getImageTePath() {
	return imageTePath;
    }

    public void setImageTePath(String imageTePath) {
	this.imageTePath = imageTePath;
    }

    public char getCretTEYN() {
	return cretTEYN;
    }

    public void setCretTEYN(char cretTEYN) {
	this.cretTEYN = cretTEYN;
    }

    public CertifyView(String membersNo, String memberName, String memberId, String phone, char gender, String address,
	    String imageFANo, String imageFaPath, char cretFAYN, String imageHENo, String imageHePath, char cretHEYN,
	    String imageRENo, String imageRePath, char cretREYN, String imageTENo, String imageTePath, char cretTEYN) {
	super();
	this.membersNo = membersNo;
	this.memberName = memberName;
	this.memberId = memberId;
	this.phone = phone;
	this.gender = gender;
	this.address = address;
	this.imageFANo = imageFANo;
	this.imageFaPath = imageFaPath;
	this.cretFAYN = cretFAYN;
	this.imageHENo = imageHENo;
	this.imageHePath = imageHePath;
	this.cretHEYN = cretHEYN;
	this.imageRENo = imageRENo;
	this.imageRePath = imageRePath;
	this.cretREYN = cretREYN;
	this.imageTENo = imageTENo;
	this.imageTePath = imageTePath;
	this.cretTEYN = cretTEYN;
    }

    public CertifyView() {
	super();
	// TODO Auto-generated constructor stub
    }

}
