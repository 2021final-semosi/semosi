package kr.co.semosi.admin.job.model.vo;

import java.sql.Date;

public class AdminReport {
	private String oPostNo;
	private String oName;
	private String oId;
	private String oTitle;
	private String oText;
	private String sPostNo;
	private String sName;
	private String sId;
	private String sTitle;
	private String sText;
	private String reportNo;
	private String content;
	private Date reportDate;
	private char oDel;
	private char sDel;
	
	public AdminReport() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AdminReport(String oPostNo, String oName, String oId, String oTitle, String oText, String sPostNo,
			String sName, String sId, String sTitle, String sText, String reportNo, String content, Date reportDate,
			char oDel, char sDel) {
		super();
		this.oPostNo = oPostNo;
		this.oName = oName;
		this.oId = oId;
		this.oTitle = oTitle;
		this.oText = oText;
		this.sPostNo = sPostNo;
		this.sName = sName;
		this.sId = sId;
		this.sTitle = sTitle;
		this.sText = sText;
		this.reportNo = reportNo;
		this.content = content;
		this.reportDate = reportDate;
		this.oDel = oDel;
		this.sDel = sDel;
	}
	public String getoPostNo() {
		return oPostNo;
	}
	public void setoPostNo(String oPostNo) {
		this.oPostNo = oPostNo;
	}
	public String getoName() {
		return oName;
	}
	public void setoName(String oName) {
		this.oName = oName;
	}
	public String getoId() {
		return oId;
	}
	public void setoId(String oId) {
		this.oId = oId;
	}
	public String getoTitle() {
		return oTitle;
	}
	public void setoTitle(String oTitle) {
		this.oTitle = oTitle;
	}
	public String getoText() {
		return oText;
	}
	public void setoText(String oText) {
		this.oText = oText;
	}
	public String getsPostNo() {
		return sPostNo;
	}
	public void setsPostNo(String sPostNo) {
		this.sPostNo = sPostNo;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsId() {
		return sId;
	}
	public void setsId(String sId) {
		this.sId = sId;
	}
	public String getsTitle() {
		return sTitle;
	}
	public void setsTitle(String sTitle) {
		this.sTitle = sTitle;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReportNo() {
		return reportNo;
	}
	public void setReportNo(String reportNo) {
		this.reportNo = reportNo;
	}
	public String getsText() {
		return sText;
	}
	public void setsText(String sText) {
		this.sText = sText;
	}
	public Date getReportDate() {
		return reportDate;
	}
	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}
	public char getoDel() {
		return oDel;
	}
	public void setoDel(char oDel) {
		this.oDel = oDel;
	}
	public char getsDel() {
		return sDel;
	}
	public void setsDel(char sDel) {
		this.sDel = sDel;
	}
	
}
