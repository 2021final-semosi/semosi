package kr.co.semosi.mypage.model.vo;

import java.sql.Timestamp;

//교사자격증 
public class TeacherDocu {

	// 이미지번호
	private String imageNo;

	// 시터 회원 번호
	private String membersNo;

	// 원본파일명
	private String originalName;

	// 변경파일명
	private String changedName;

	// 이미지경로
	private String imagePath;

	// 업로드일시
	private Timestamp uploadTime;

	// 삭제여부
	private String delYn;

	// 승인여부
	private char certYn;

	public String getImageNo() {
		return imageNo;
	}

	public void setImageNo(String imageNo) {
		this.imageNo = imageNo;
	}

	public String getMembersNo() {
		return membersNo;
	}

	public void setMembersNo(String membersNo) {
		this.membersNo = membersNo;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public String getChangedName() {
		return changedName;
	}

	public void setChangedName(String changedName) {
		this.changedName = changedName;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public Timestamp getUploadTime() {
		return uploadTime;
	}

	public void setUploadTime(Timestamp uploadTime) {
		this.uploadTime = uploadTime;
	}

	public String getDelYn() {
		return delYn;
	}

	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}

	public char getCertYn() {
		return certYn;
	}

	public void setCertYn(char certYn) {
		this.certYn = certYn;
	}

	public TeacherDocu(String imageNo, String membersNo, String originalName, String changedName, String imagePath,
			Timestamp uploadTime, String delYn, char certYn) {
		super();
		this.imageNo = imageNo;
		this.membersNo = membersNo;
		this.originalName = originalName;
		this.changedName = changedName;
		this.imagePath = imagePath;
		this.uploadTime = uploadTime;
		this.delYn = delYn;
		this.certYn = certYn;
	}

	public TeacherDocu() {
		super();
		// TODO Auto-generated constructor stub
	}

}
