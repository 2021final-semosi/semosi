package kr.co.semosi.cs.model.vo;

import java.sql.Timestamp;

public class QnA {

    private int postNo;		// 게시글번호 
    private String title;	// 제목 
    private String content;	// 내용 
    private Timestamp writeDate;	// 작성일 
    private String writerPNo;	// 작성자_부모회원번호 
    private String writerSNo;	// 작성자_시터회원번호 
    private String delYn;	// 삭제여부 
    
    public QnA() {
		super();
	}

	public QnA(int postNo, String title, String content, Timestamp writeDate, String writerPNo, String writerSNo,
			String delYn) {
		super();
		this.postNo = postNo;
		this.title = title;
		this.content = content;
		this.writeDate = writeDate;
		this.writerPNo = writerPNo;
		this.writerSNo = writerSNo;
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

    public String getWriterPNo() {
        return writerPNo;
    }

    public void setWriterPNo(String writerPNo) {
        this.writerPNo = writerPNo;
    }

    public String getWriterSNo() {
        return writerSNo;
    }

    public void setWriterSNo(String writerSNo) {
        this.writerSNo = writerSNo;
    }

    public String getDelYn() {
        return delYn;
    }

    public void setDelYn(String delYn) {
        this.delYn = delYn;
    }

}
