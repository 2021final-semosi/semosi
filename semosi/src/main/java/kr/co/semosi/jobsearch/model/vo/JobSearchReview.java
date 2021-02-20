package kr.co.semosi.jobsearch.model.vo;

import java.sql.Timestamp;

//구인에 대한 후기 
public class JobSearchReview {

    // 후기번호
    private String reviewNo;

    // 작성자_시터회원번호
    private String writerSNo;
    
    // 작성자 이름 (시터회원)
    private String writerSName;

    // 후기대상자_부모회원번호
    private String reviewdPNo;

    // 내용
    private String content;

    // 평점
    private int grade;

    // 삭제여부
    private String delYn;
    
    //작성일
    private Timestamp writeDate;

	public JobSearchReview() {
		super();
		// TODO Auto-generated constructor stub
	}

	public JobSearchReview(String reviewNo, String writerSNo, String writerSName, String reviewdPNo, String content,
			int grade, String delYn, Timestamp writeDate) {
		super();
		this.reviewNo = reviewNo;
		this.writerSNo = writerSNo;
		this.writerSName = writerSName;
		this.reviewdPNo = reviewdPNo;
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

	public String getWriterSNo() {
		return writerSNo;
	}

	public void setWriterSNo(String writerSNo) {
		this.writerSNo = writerSNo;
	}

	public String getWriterSName() {
		return writerSName;
	}

	public void setWriterSName(String writerSName) {
		this.writerSName = writerSName;
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
