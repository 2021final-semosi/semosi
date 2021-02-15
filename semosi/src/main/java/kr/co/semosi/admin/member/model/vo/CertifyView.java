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
	private char certFAYN;

	private String imageHENo;
	private String imageHePath;
	private char certHEYN;

	private String imageRENo;
	private String imageRePath;
	private char certREYN;

	private String imageTENo;
	private String imageTePath;
	private char certTEYN;

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

	public char getCertFAYN() {
		return certFAYN;
	}

	public void setCertFAYN(char certFAYN) {
		this.certFAYN = certFAYN;
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

	public char getCertHEYN() {
		return certHEYN;
	}

	public void setCertHEYN(char certHEYN) {
		this.certHEYN = certHEYN;
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

	public char getCertREYN() {
		return certREYN;
	}

	public void setCertREYN(char certREYN) {
		this.certREYN = certREYN;
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

	public char getCertTEYN() {
		return certTEYN;
	}

	public void setCertTEYN(char certTEYN) {
		this.certTEYN = certTEYN;
	}

	public CertifyView(String membersNo, String memberName, String memberId, String phone, char gender, String address,
			String imageFANo, String imageFaPath, char certFAYN, String imageHENo, String imageHePath, char certHEYN,
			String imageRENo, String imageRePath, char certREYN, String imageTENo, String imageTePath, char certTEYN) {
		super();
		this.membersNo = membersNo;
		this.memberName = memberName;
		this.memberId = memberId;
		this.phone = phone;
		this.gender = gender;
		this.address = address;
		this.imageFANo = imageFANo;
		this.imageFaPath = imageFaPath;
		this.certFAYN = certFAYN;
		this.imageHENo = imageHENo;
		this.imageHePath = imageHePath;
		this.certHEYN = certHEYN;
		this.imageRENo = imageRENo;
		this.imageRePath = imageRePath;
		this.certREYN = certREYN;
		this.imageTENo = imageTENo;
		this.imageTePath = imageTePath;
		this.certTEYN = certTEYN;
	}

	public CertifyView() {
		super();
		// TODO Auto-generated constructor stub
	}

}
