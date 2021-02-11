package kr.co.semosi.index.model.vo;

public class Index {
	private int offerCount;
	private int searchCount;
	private int sitterCount;
	
	public Index() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Index(int offerCount, int searchCount, int sitterCount) {
		super();
		this.offerCount = offerCount;
		this.searchCount = searchCount;
		this.sitterCount = sitterCount;
	}
	
	public int getOfferCount() {
		return offerCount;
	}
	public void setOfferCount(int offerCount) {
		this.offerCount = offerCount;
	}
	public int getSearchCount() {
		return searchCount;
	}
	public void setSearchCount(int searchCount) {
		this.searchCount = searchCount;
	}
	public int getSitterCount() {
		return sitterCount;
	}
	public void setSitterCount(int sitterCount) {
		this.sitterCount = sitterCount;
	}
}
