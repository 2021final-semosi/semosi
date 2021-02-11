package kr.co.semosi.admin.voucher.model.vo;

import java.sql.Date;

public class ParentsVoucher {
	 // 이용권번호 
    private String voucherId;
    // 부모 회원 번호 
    private String memberpNo;
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
    
    public ParentsVoucher() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ParentsVoucher(String voucherId, String memberpNo, String voucherName, String voucherPrice, Date boughtDate,
			Date endDate, String refundYn) {
		super();
		this.voucherId = voucherId;
		this.memberpNo = memberpNo;
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

    public String getMemberpNo() {
        return memberpNo;
    }

    public void setMemberpNo(String memberpNo) {
        this.memberpNo = memberpNo;
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
