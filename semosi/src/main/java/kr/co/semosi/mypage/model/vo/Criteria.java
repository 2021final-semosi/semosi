package kr.co.semosi.mypage.model.vo;

public class Criteria {
	private int page; // 현재 페이지 번호
	private int perPageNum; // 한 페이지 당 보여줄 게시글의 갯수
	private String memberNo;

	public String getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}

	public int getPageStart() {
		return (this.page - 1) * perPageNum + 1;
	}

	public Criteria() {
		this.page = 1;
		this.perPageNum = 10;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if (page <= 0) {
			this.page = 1;
		} else {
			this.page = page;
		}
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int pageCount) {// 특정 페이지의 게시글 시작번호, 게시글 시작 행 번호
		int cnt = this.perPageNum;
		if (pageCount != cnt) {
			this.perPageNum = cnt;
		} else {
			this.perPageNum = pageCount;
		}
	}

}
