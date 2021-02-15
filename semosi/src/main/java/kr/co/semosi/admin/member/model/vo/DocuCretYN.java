package kr.co.semosi.admin.member.model.vo;

import java.sql.Timestamp;

//�옄寃⑹쬆 �씤利� vo
public class DocuCretYN {

	// �씠誘몄�踰덊샇
	private String imageNo;

	// �듅�씤�뿬遺�
	private char certYn;

	public String getImageNo() {
		return imageNo;
	}

	public void setImageNo(String imageNo) {
		this.imageNo = imageNo;
	}

	public char getCertYn() {
		return certYn;
	}

	public void setCertYn(char certYn) {
		this.certYn = certYn;
	}

	public DocuCretYN(String imageNo, char certYn) {
		super();
		this.imageNo = imageNo;
		this.certYn = certYn;
	}

	public DocuCretYN() {
		super();
		// TODO Auto-generated constructor stub
	}

}
