package kr.co.semosi.admin.member.model.vo;

import java.sql.Timestamp;

//자격증 인증 vo
public class DocuCretYN {

    // 이미지번호
    private String imageNo;

    // 승인여부
    private char cretYn;

    public String getImageNo() {
	return imageNo;
    }

    public void setImageNo(String imageNo) {
	this.imageNo = imageNo;
    }

    public char getCretYn() {
	return cretYn;
    }

    public void setCretYn(char cretYn) {
	this.cretYn = cretYn;
    }

    public DocuCretYN(String imageNo, char cretYn) {
	super();
	this.imageNo = imageNo;
	this.cretYn = cretYn;
    }

    public DocuCretYN() {
	super();
	// TODO Auto-generated constructor stub
    }

}
