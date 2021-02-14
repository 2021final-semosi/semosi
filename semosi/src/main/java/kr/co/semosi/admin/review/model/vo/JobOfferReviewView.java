package kr.co.semosi.admin.review.model.vo;

import java.sql.Date;
import java.util.List;

import kr.co.semosi.admin.member.model.vo.MemberS;

//구인에 대한 후기 
public class JobOfferReviewView {

	private String reviewNo;
	private String memberId;
	private String memberName;
	private String content;
	private int grade;
	private Date writeDate;
	private char delYn;

	public String getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(String reviewNo) {
		this.reviewNo = reviewNo;
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

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	public char getDelYn() {
		return delYn;
	}

	public void setDelYn(char delYn) {
		this.delYn = delYn;
	}

	public JobOfferReviewView(String reviewNo, String memberId, String memberName, String content, int grade,
			Date writeDate, char delYn) {
		super();
		this.reviewNo = reviewNo;
		this.memberId = memberId;
		this.memberName = memberName;
		this.content = content;
		this.grade = grade;
		this.writeDate = writeDate;
		this.delYn = delYn;
	}

	public JobOfferReviewView() {
		super();
		// TODO Auto-generated constructor stub
	}

}