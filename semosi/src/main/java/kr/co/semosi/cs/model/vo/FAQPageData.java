package kr.co.semosi.cs.model.vo;

import java.util.ArrayList;

public class FAQPageData {
	//페이징 처리된 데이터를 저장하는 vo 객체
	private ArrayList<FAQ> list;
	private String pageNavi;

	public FAQPageData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FAQPageData(ArrayList<FAQ> list, String pageNavi) {
		super();
		this.list = list;
		this.pageNavi = pageNavi;
	}
	
	public ArrayList<FAQ> getList() {
		return list;
	}
	public void setList(ArrayList<FAQ> list) {
		this.list = list;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
}
