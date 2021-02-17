package kr.co.semosi.cs.model.vo;

import java.util.ArrayList;

public class QnAPageData {
	//페이징 처리된 데이터를 저장하는 vo 객체
	private ArrayList<QnA> list;
	private String pageNavi;

	public QnAPageData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public QnAPageData(ArrayList<QnA> list, String pageNavi) {
		super();
		this.list = list;
		this.pageNavi = pageNavi;
	}
	
	public ArrayList<QnA> getList() {
		return list;
	}
	public void setList(ArrayList<QnA> list) {
		this.list = list;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
}
