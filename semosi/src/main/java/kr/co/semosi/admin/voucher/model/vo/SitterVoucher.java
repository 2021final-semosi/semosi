package kr.co.semosi.admin.voucher.model.vo;

import java.sql.Date;

public class SitterVoucher {
	// 이용권번호 
    private String voucherId;
    // 시터회원번호 
    private String membersNo;
    // 이용권종류 
    private String voucherName;
    // 이용권금액 
    private String voucherPrice;
    // 구입일 
    private Date boughtDate;
    // 만료일 
    private Date endDate;
    // 환불여부 
    private String refundYn;

    public SitterVoucher() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SitterVoucher(String voucherId, String membersNo, String voucherName, String voucherPrice, Date boughtDate,
			Date endDate, String refundYn) {
		super();
		this.voucherId = voucherId;
		this.membersNo = membersNo;
		this.voucherName = voucherName;
		this.voucherPrice = voucherPrice;
		this.boughtDate = boughtDate;
		this.endDate = endDate;
		this.refundYn = refundYn;
	}

	public String getVoucherId() {
        return voucherId;
    }

    public void setVoucherId(String voucherId) {
        this.voucherId = voucherId;
    }

    public String getMembersNo() {
        return membersNo;
    }

    public void setMembersNo(String membersNo) {
        this.membersNo = membersNo;
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

    public String getRefundYn() {
        return refundYn;
    }

    public void setRefundYn(String refundYn) {
        this.refundYn = refundYn;
    }
}
