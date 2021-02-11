package kr.co.semosi.admin.review.model.vo;

import java.sql.Date;
import java.util.List;

import kr.co.semosi.admin.member.model.vo.MemberS;

//구인에 대한 후기 
public class JobOfferReview {

    // 후기번호
    private String reviewNo;

    // 작성자_시터회원번호
    private String writerSNo;

    // 후기대상자_부모회원번호
    private String reviewdPNo;

    // 내용
    private String content;

    // 평점
    private int grade;

    // 삭제여부
    private char delYn;

    private Date writeDate;

    private MemberS memberS;

    public String getReviewNo() {
	return reviewNo;
    }

    public void setReviewNo(String reviewNo) {
	this.reviewNo = reviewNo;
    }

    public String getWriterSNo() {
	return writerSNo;
    }

    public void setWriterSNo(String writerSNo) {
	this.writerSNo = writerSNo;
    }

    public String getReviewdPNo() {
	return reviewdPNo;
    }

    public void setReviewdPNo(String reviewdPNo) {
	this.reviewdPNo = reviewdPNo;
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

    public MemberS getMemberS() {
	return memberS;
    }

    public void setMemberS(MemberS memberS) {
	this.memberS = memberS;
    }

    public JobOfferReview(String reviewNo, String writerSNo, String reviewdPNo, String content, int grade, char delYn,
	    Date writeDate, MemberS memberS) {
	super();
	this.reviewNo = reviewNo;
	this.writerSNo = writerSNo;
	this.reviewdPNo = reviewdPNo;
	this.content = content;
	this.grade = grade;
	this.delYn = delYn;
	this.writeDate = writeDate;
	this.memberS = memberS;
    }

    public JobOfferReview() {
	super();
	// TODO Auto-generated constructor stub
    }

}