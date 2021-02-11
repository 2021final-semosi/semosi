package kr.co.semosi.admin.review.model.vo;

import java.sql.Date;

import kr.co.semosi.admin.member.model.vo.MemberP;

//구직에 대한 후기 
public class JobSearchReview {

    // 후기번호
    private String reviewNo;

    // 작성자_부모회원번호
    private String writerPNo;

    // 후기대상자_시터회원번호
    private String reviewdSNo;

    // 내용
    private String content;

    // 평점
    private int grade;

    // 삭제여부
    private char delYn;

    private Date writeDate;

    private MemberP memberP;

    public String getReviewNo() {
	return reviewNo;
    }

    public void setReviewNo(String reviewNo) {
	this.reviewNo = reviewNo;
    }

    public String getWriterPNo() {
	return writerPNo;
    }

    public void setWriterPNo(String writerPNo) {
	this.writerPNo = writerPNo;
    }

    public String getReviewdSNo() {
	return reviewdSNo;
    }

    public void setReviewdSNo(String reviewdSNo) {
	this.reviewdSNo = reviewdSNo;
    }

    public String getContent() {
	return content;
    }

    public void setContent(String content) {
	this.content = content;
    }

    public int getGrade() {
	return grade;
    }

    public void setGrade(int grade) {
	this.grade = grade;
    }

    public char getDelYn() {
	return delYn;
    }

    public void setDelYn(char delYn) {
	this.delYn = delYn;
    }

    public Date getWriteDate() {
	return writeDate;
    }

    public void setWriteDate(Date writeDate) {
	this.writeDate = writeDate;
    }

    public MemberP getMemberP() {
	return memberP;
    }

    public void setMemberP(MemberP memberP) {
	this.memberP = memberP;
    }

    public JobSearchReview(String reviewNo, String writerPNo, String reviewdSNo, String content, int grade, char delYn,
	    Date writeDate, MemberP memberP) {
	super();
	this.reviewNo = reviewNo;
	this.writerPNo = writerPNo;
	this.reviewdSNo = reviewdSNo;
	this.content = content;
	this.grade = grade;
	this.delYn = delYn;
	this.writeDate = writeDate;
	this.memberP = memberP;
    }

    public JobSearchReview() {
	super();
	// TODO Auto-generated constructor stub
    }

}
