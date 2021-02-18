package kr.co.semosi.admin.voucher.model.vo;

import java.sql.Date;

public class ParentsVoucherView {
	 // 이용권번호 
    private String voucherNo;
    // 부모 회원 아이디 
    private String memberId;
    // 부모 회원 전화번호
    private String phone;
    // 이용권종류 
    private String voucherName;
    // 이용권금액 
    private String voucherPrice;
    // 구입일 
    private Date boughtDate;
    // 만료일 
    private Date endDate;
    // 환불여부 
    private String refundYN;
    
    public ParentsVoucherView() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ParentsVoucherView(String voucherNo, String memberId, String phone, String voucherName, String voucherPrice, Date boughtDate,
			Date endDate, String refundYN) {
		super();
		this.voucherNo = voucherNo;
		this.memberId = memberId;
		this.phone = phone;
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

    public String getMemberId() {
        return memberId;
    }

    public void setMemberpId(String memberId) {
        this.memberId = memberId;
    }

    public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
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

    public String getRefundYN() {
        return refundYN;
    }

    public void setRefundYN(String refundYN) {
        this.refundYN = refundYN;
    }
}
