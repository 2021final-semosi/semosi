package kr.co.semosi.mypage.model.vo;

import java.sql.Date;

public class ParentVoucher {
	private String voucherNo;
	private String memberNo;
	private String voucherName;
	private String voucherPrice;
	private Date boughtDate;
	private Date endDate;
	private char refundYN;
	
	public ParentVoucher() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ParentVoucher(String voucherNo, String memberNo, String voucherName, String voucherPrice, Date boughtDate,
			Date endDate, char refundYN) {
		super();
		this.voucherNo = voucherNo;
		this.memberNo = memberNo;
		this.voucherName = voucherName;
		this.voucherPrice = voucherPrice;
		this.boughtDate = boughtDate;
		this.endDate = endDate;
		this.refundYN = refundYN;
	}
	
	public String getVoucherNo() {
		return voucherNo;
	}
	public void setVoucherNo(String voucherNo) {
		this.voucherNo = voucherNo;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getVoucherName() {
		return voucherName;
	}
	public void setVoucherName(String voucherName) {
		this.voucherName = voucherName;
	}
	public String getVoucherPrice() {
		return voucherPrice;
	}
	public void setVoucherPrice(String voucherPrice) {
		this.voucherPrice = voucherPrice;
	}
	public Date getBoughtDate() {
		return boughtDate;
	}
	public void setBoughtDate(Date boughtDate) {
		this.boughtDate = boughtDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public char getRefundYN() {
		return refundYN;
	}
	public void setRefundYN(char refundYN) {
		this.refundYN = refundYN;
	}
	

}
