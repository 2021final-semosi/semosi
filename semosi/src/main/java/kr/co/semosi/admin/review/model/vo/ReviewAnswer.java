package kr.co.semosi.admin.review.model.vo;

//후기답글 
public class ReviewAnswer {

    // 후기답글번호
    private String answerReivewNo;

    // 후기번호_구인후기
    private String reviewSNo;

    // 후기번호_구직후기
    private String reviewPNo;

    // 내용
    private String content;

    // 삭제여부
    private String delYn;

    public String getAnswerReivewNo() {
	return answerReivewNo;
    }

    public void setAnswerReivewNo(String answerReivewNo) {
	this.answerReivewNo = answerReivewNo;
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

    public String getDelYn() {
	return delYn;
    }

    public void setDelYn(String delYn) {
	this.delYn = delYn;
    }

    public ReviewAnswer(String answerReivewNo, String reviewSNo, String reviewPNo, String content, String delYn) {
	super();
	this.answerReivewNo = answerReivewNo;
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
