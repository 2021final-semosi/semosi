package kr.co.semosi.admin.customer.model.vo;

import java.sql.Date;

public class FAQ {
	 // 게시글번호 
    private int postNo;
    // 제목 
    private String title;
    // 내용 
    private String content;
    // 작성일 
    private Date writeDate;
    // 작성자(관리자) 
    private String writer;
    // 삭제여부 
    private String delYn;
    // 카테고리 
    private String category;
    

    public FAQ() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FAQ(int postNo, String title, String content, Date writeDate, String writer, String delYn, String category) {
		super();
		this.postNo = postNo;
		this.title = title;
		this.content = content;
		this.writeDate = writeDate;
		this.writer = writer;
		this.delYn = delYn;
		this.category = category;
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

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
