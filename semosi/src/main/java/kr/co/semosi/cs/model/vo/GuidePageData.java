package kr.co.semosi.cs.model.vo;

import java.util.ArrayList;

public class GuidePageData {
	//페이징 처리된 데이터를 저장하는 vo 객체
	private ArrayList<Guide> list;
	private String pageNavi;

	public GuidePageData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GuidePageData(ArrayList<Guide> list, String pageNavi) {
		super();
		this.list = list;
		this.pageNavi = pageNavi;
	}
	
	public ArrayList<Guide> getList() {
		return list;
	}
	public void setList(ArrayList<Guide> list) {
		this.list = list;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
}
