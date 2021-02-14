package kr.co.semosi.admin.review.model.vo;

import java.sql.Date;

public class ReviewAnswerMS {
    private String answerReviewNo;
    private String reviewSNo;
    private String reviewPNo;
    private String answerContent;
    private char delYN;
    private Date writeDate;
    private String writer;
    private String memberId;
    private String memberName;
    private JobSearchReviewView jobReview;

    public String getAnswerReviewNo() {
	return answerReviewNo;
    }

    public void setAnswerReviewNo(String answerReviewNo) {
	this.answerReviewNo = answerReviewNo;
    }

    public String getReviewSNo() {
	return reviewSNo;
    }

    public void setReviewSNo(String reviewSNo) {
	this.reviewSNo = reviewSNo;
    }

    public String getReviewPNo() {
	return reviewPNo;
    }

    public void setReviewPNo(String reviewPNo) {
	this.reviewPNo = reviewPNo;
    }

    public String getAnswerContent() {
	return answerContent;
    }

    public void setAnswerContent(String answerContent) {
	this.answerContent = answerContent;
    }

    public char getDelYN() {
	return delYN;
    }

    public void setDelYN(char delYN) {
	this.delYN = delYN;
    }

    public Date getWriteDate() {
	return writeDate;
    }

    public void setWriteDate(Date writeDate) {
	this.writeDate = writeDate;
    }

    public String getWriter() {
	return writer;
    }

    public void setWriter(String writer) {
	this.writer = writer;
    }

    public String getMemberId() {
	return memberId;
    }

    public void setMemberId(String memberId) {
	this.memberId = memberId;
    }

    public String getMemberName() {
	return memberName;
    }

    public void setMemberName(String memberName) {
	this.memberName = memberName;
    }

    public JobSearchReviewView getJobReview() {
	return jobReview;
    }

    public void setJobReview(JobSearchReviewView jobReview) {
	this.jobReview = jobReview;
    }

    public ReviewAnswerMS(String answerReviewNo, String reviewSNo, String reviewPNo, String answerContent, char delYN,
	    Date writeDate, String writer, String memberId, String memberName, JobSearchReviewView jobReview) {
	super();
	this.answerReviewNo = answerReviewNo;
	this.reviewSNo = reviewSNo;
	this.reviewPNo = reviewPNo;
	this.answerContent = answerContent;
	this.delYN = delYN;
	this.writeDate = writeDate;
	this.writer = writer;
	this.memberId = memberId;
	this.memberName = memberName;
	this.jobReview = jobReview;
    }

    public ReviewAnswerMS() {
	super();
	// TODO Auto-generated constructor stub
    }

}
