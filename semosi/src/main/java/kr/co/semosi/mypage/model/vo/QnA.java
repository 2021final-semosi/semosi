package kr.co.semosi.mypage.model.vo;

import java.sql.Date;

public class QnA {
	 // 게시글번호 
    private int postNo;
    // 제목 
    private String title;
    // 내용 
    private String content;
    // 작성일 
    private Date writeDate;
    // 작성자_부모회원번호 
    private String writerPNo;
    // 작성자_시터회원번호 
    private String writerSNo;
    // 삭제여부 
    private String delYn;
    
    public QnA() {
		super();
		// TODO Auto-generated constructor stub
	}

	public QnA(int postNo, String title, String content, Date writeDate, String writerPNo, String writerSNo,
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

    public Date getWriteDate() {
        return writeDate;
    }

    public void setWriteDate(Date writeDate) {
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
