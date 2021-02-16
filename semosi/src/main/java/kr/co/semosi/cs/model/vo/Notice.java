package kr.co.semosi.cs.model.vo;

import java.sql.Timestamp;

public class Notice {

    private int postNo;		// 게시글번호 
    private String title;	// 제목 
    private String content;	// 내용 
    private Timestamp writeDate;	// 작성일 
    private String writer;	// 작성자(관리자) 
    private String delYn;	// 삭제여부 

    public Notice() {
		super();
	}

	public Notice(int postNo, String title, String content, Timestamp writeDate, String writer, String delYn) {
		super();
		this.postNo = postNo;
		this.title = title;
		this.content = content;
		this.writeDate = writeDate;
		this.writer = writer;
		this.delYn = delYn;
	}

	public int getPostNo() {
        return postNo;
    }

    public void setPostNo(int postNo) {
        this.postNo = postNo;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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
