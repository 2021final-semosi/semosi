package kr.co.semosi.admin.member.model.vo;

import java.sql.Timestamp;

//교사자격증 
public class TeacherDocu {

    // 이미지번호
    private int imageNo;

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
    private String cretYn;

    public int getImageNo() {
	return imageNo;
    }

    public void setImageNo(int imageNo) {
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

    public String getCretYn() {
	return cretYn;
    }

    public void setCretYn(String cretYn) {
	this.cretYn = cretYn;
    }

    public TeacherDocu(int imageNo, String membersNo, String originalName, String changedName, String imagePath, Timestamp uploadTime, String delYn, String cretYn) {
	super();
	this.imageNo = imageNo;
	this.membersNo = membersNo;
	this.originalName = originalName;
	this.changedName = changedName;
	this.imagePath = imagePath;
	this.uploadTime = uploadTime;
	this.delYn = delYn;
	this.cretYn = cretYn;
    }

    public TeacherDocu() {
	super();
	// TODO Auto-generated constructor stub
    }

}
