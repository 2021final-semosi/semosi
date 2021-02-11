package kr.co.semosi.admin.review.model.vo;

//후기답글 
public class ReviewAnswer {

    // 후기답글번호
    private String answerReviewNo;

    // 후기번호_구인후기
    private String reviewSNo;

    // 후기번호_구직후기
    private String reviewPNo;

    // 내용
    private String content;

    // 삭제여부
    private char delYn;

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

    public String getContent() {
	return content;
    }

    public void setContent(String content) {
	this.content = content;
    }

    public char getDelYn() {
	return delYn;
    }

    public void setDelYn(char delYn) {
	this.delYn = delYn;
    }

    public ReviewAnswer(String answerReviewNo, String reviewSNo, String reviewPNo, String content, char delYn) {
	super();
	this.answerReviewNo = answerReviewNo;
	this.reviewSNo = reviewSNo;
	this.reviewPNo = reviewPNo;
	this.content = content;
	this.delYn = delYn;
    }

    public ReviewAnswer() {
	super();
	// TODO Auto-generated constructor stub
    }

}
