package kr.co.semosi.mypage.model.vo;

public class Pagination {
	
    private int currentPage;		// 현재페이지
    private int countPerPage;		// 페이지당 출력할 게시물 갯수
    private int pageSize;			// 화면 하단 페이지 사이즈 1~10, 10~20 20~30 ...
    private int totalRecordCount;	// 전체 데이터 개수
    private int totalPageCount;    	// 전체 페이지 개수
    private int firstPageNumber;	// 페이지 리스트의 첫 페이지 번호
    private int lastPageNumber;		// 페이지 리스트의 마지막 페이지 번호
    private int firstRecordIndex;	// SQL의 조건절에 사용되는 첫 RNUM
    private int lastRecordIndex;	// SQL의 조건절에 사용되는 마지막 RNUM
    private boolean hasPreviousPage;// 이전 페이지 존재 여부
    private boolean hasNextPage;	// 다음 페이지 존재 여부
    
    
	// 현재 페이지, 한 페이지당 게시물 수, 하단 페이지 갯수 
    public Pagination(int currentPage, int countPerPage, int pageSize) {
    	
	// 강제 입력 방지
	if (currentPage < 1) {
	    currentPage = 1;
	}
	
	// 하단 페이지 갯수 5개로 제한
	if (pageSize != 5) {
	    pageSize = 5;
	}
	
	this.currentPage = currentPage;
	this.countPerPage = countPerPage;
	this.pageSize = pageSize;

    }

    public void setTotalRecordCount(int totalRecordCount) {
	this.totalRecordCount = totalRecordCount;
	
		//전체 페이지 갯수가 0보다 크다면 -> 게시물이 존재한다면 -> 무조건 존재 
		if (totalRecordCount > 0) {calculation();}
    }
    
    //전체 페이지 수 계산 메소드
    private void calculation() {

    //전체 페이지 수 = ((전체 게시글 수 -1)/페이지당 출력할 게시물 갯수)+1 
    	// (5-1 / 5) + 1 = 1
	totalPageCount = ((totalRecordCount - 1) / this.getCountPerPage()) + 1;

	// 전체 페이지 수 (현재 페이지 번호가 전체 페이지 번호보다 크면 현재 페이지 번호에 전체 페이지 번호를 저장)
	if (this.getCurrentPage() > totalPageCount) {
	    this.setCurrentPage(totalPageCount);
	}

	// 페이지 리스트의 첫 페이지 번호 = (현재 페이지 번호 - 1 / 하단 페이지 사이즈 )
	firstPageNumber = ((this.getCurrentPage() - 1) / this.getPageSize()) * this.getPageSize() + 1;

	// 페이지 리스트의 마지막 페이지 번호 (마지막 페이지가 전체 페이지 수보다 크면 마지막 페이지에 전체 페이지 수를 저장)
	lastPageNumber = firstPageNumber + this.getPageSize() - 1;
	if (lastPageNumber > totalPageCount) {
		lastPageNumber = totalPageCount;
	}

	// SQL의 조건절에 사용되는 첫 RNUM
	firstRecordIndex = (this.getCurrentPage() - 1) * this.getCountPerPage();

	// SQL의 조건절에 사용되는 마지막 RNUM
	lastRecordIndex = this.getCurrentPage() * this.getCountPerPage();

	// 이전 페이지 존재 여부
	hasPreviousPage = firstPageNumber == 1 ? false : true;
	if (hasPreviousPage == false) {
	    if (currentPage != firstPageNumber) {
		hasPreviousPage = true;
	    } else {
		hasPreviousPage = false;
	    }
	}

	// 다음 페이지 존재 여부
	hasNextPage = (lastPageNumber * this.getCountPerPage()) >= totalRecordCount ? false : true;
	if (hasNextPage == false) {
	    // 마지막 페이지에서 현재페이지가 마지막 페이지가 아닌경우 next처리
	    if (currentPage != lastPageNumber) {
		hasNextPage = true;
	    } else {
		hasNextPage = false;
	    }
	}
    }

    /*
     * GETTER SETTER //
     */

    public int getCurrentPage() {
	return currentPage;
    }

    public void setCurrentPage(int currentPage) {
	this.currentPage = currentPage;
    }

    public int getCountPerPage() {
	return countPerPage;
    }

    public void setCountPerPage(int countPerPage) {
	this.countPerPage = countPerPage;
    }

    public int getPageSize() {
	return pageSize;
    }

    public void setPageSize(int pageSize) {
	this.pageSize = pageSize;
    }

    public int getTotalPageCount() {
	return totalPageCount;
    }

    public void setTotalPageCount(int totalPageCount) {
	this.totalPageCount = totalPageCount;
    }

    public int getFirstPageNumber() {
	return firstPageNumber;
    }

    public void setFirstPageNumber(int firstPageNumber) {
	this.firstPageNumber = firstPageNumber;
    }

    public int getLastPageNumber() {
	return lastPageNumber;
    }

    public void setLastPageNumber(int lastPageNumber) {
	this.lastPageNumber = lastPageNumber;
    }

    public int getFirstRecordIndex() {
	return firstRecordIndex;
    }

    public void setFirstRecordIndex(int firstRecordIndex) {
	this.firstRecordIndex = firstRecordIndex;
    }

    public int getLastRecordIndex() {
	return lastRecordIndex;
    }

    public void setLastRecordIndex(int lastRecordIndex) {
	this.lastRecordIndex = lastRecordIndex;
    }

    public boolean isHasPreviousPage() {
	return hasPreviousPage;
    }

    public void setHasPreviousPage(boolean hasPreviousPage) {
	this.hasPreviousPage = hasPreviousPage;
    }

    public boolean isHasNextPage() {
	return hasNextPage;
    }

    public void setHasNextPage(boolean hasNextPage) {
	this.hasNextPage = hasNextPage;
    }

    public int getTotalRecordCount() {
	return totalRecordCount;
    }


}
