package kr.co.semosi.joboffer.model.vo;

import java.sql.Timestamp;

//구직에 대한 후기 
public class JobOfferReview {

    // 후기번호
    private String reviewNo;

    // 작성자_부모회원번호
    private String writerPNo;
    
    // 작성자 이름 (부모회원)
    private String writerPName;

    // 후기대상자_시터회원번호
    private String reviewdSNo;

    // 내용
    private String content;

    // 평점
    private int grade;

    // 삭제여부
    private String delYn;
    
    //작성일
    private Timestamp writeDate;

	public JobOfferReview() {
		super();
		// TODO Auto-generated constructor stub
	}

	public JobOfferReview(String reviewNo, String writerPNo, String writerPName, String reviewdSNo, String content,
			int grade, String delYn, Timestamp writeDate) {
		super();
		this.reviewNo = reviewNo;
		this.writerPNo = writerPNo;
		this.writerPName = writerPName;
		this.reviewdSNo = reviewdSNo;
		this.content = content;
		this.grade = grade;
		this.delYn = delYn;
		this.writeDate = writeDate;
	}

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

	public String getWriterPName() {
		return writerPName;
	}

	public void setWriterPName(String writerPName) {
		this.writerPName = writerPName;
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

	public String getDelYn() {
		return delYn;
	}

	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}

	public Timestamp getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Timestamp writeDate) {
		this.writeDate = writeDate;
	}


}
