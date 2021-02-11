package kr.co.semosi.admin.job.model.vo;

import java.sql.Date;

public class PostReport {
	// 신고번호 
    private int reportNo;
    // 구인게시글번호 
    private String postJoNo;
    // 구직게시글번호 
    private String postJsNo;
    // 신고사유 
    private String content;
    // 신고자_부모회원번호 
    private String reporterPNo;
    // 신고자_시터회원번호 
    private String reporterSNo;
    // 신고일 
    private Date reportDate;
    
    public PostReport() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PostReport(int reportNo, String postJoNo, String postJsNo, String content, String reporterPNo,
			String reporterSNo, Date reportDate) {
		super();
		this.reportNo = reportNo;
		this.postJoNo = postJoNo;
		this.postJsNo = postJsNo;
		this.content = content;
		this.reporterPNo = reporterPNo;
		this.reporterSNo = reporterSNo;
		this.reportDate = reportDate;
	}

	public int getReportNo() {
        return reportNo;
    }

    public void setReportNo(int reportNo) {
        this.reportNo = reportNo;
    }

    public String getPostJoNo() {
        return postJoNo;
    }

    public void setPostJoNo(String postJoNo) {
        this.postJoNo = postJoNo;
    }

    public String getPostJsNo() {
        return postJsNo;
    }

    public void setPostJsNo(String postJsNo) {
        this.postJsNo = postJsNo;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getReporterPNo() {
        return reporterPNo;
    }

    public void setReporterPNo(String reporterPNo) {
        this.reporterPNo = reporterPNo;
    }

    public String getReporterSNo() {
        return reporterSNo;
    }

    public void setReporterSNo(String reporterSNo) {
        this.reporterSNo = reporterSNo;
    }

    public Date getReportDate() {
        return reportDate;
    }

    public void setReportDate(Date reportDate) {
        this.reportDate = reportDate;
    }
}
