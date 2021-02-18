package kr.co.semosi.cs.model.vo;

import java.sql.Timestamp;

public class QnAComment {

    private int commentNo;	// 댓글번호 
    private int postNo;		// 게시글번호 
    private String content;	// 내용 
    private Timestamp writeDate;	// 작성일 
    private String writer;	// 작성자(관리자) 
    private String delYn;	// 삭제여부 

    public QnAComment() {
		super();
	}

	public QnAComment(int commentNo, int postNo, String content, Timestamp writeDate, String writer, String delYn) {
		super();
		this.commentNo = commentNo;
		this.postNo = postNo;
		this.content = content;
		this.writeDate = writeDate;
		this.writer = writer;
		this.delYn = delYn;
	}

	public int getCommentNo() {
        return commentNo;
    }

    public void setCommentNo(int commentNo) {
        this.commentNo = commentNo;
    }

    public int getPostNo() {
        return postNo;
    }

    public void setPostNo(int postNo) {
        this.postNo = postNo;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getWriteDate() {
        return writeDate;
    }

    public void setWriteDate(Timestamp writeDate) {
        this.writeDate = writeDate;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getDelYn() {
        return delYn;
    }

    public void setDelYn(String delYn) {
        this.delYn = delYn;
    }

}
