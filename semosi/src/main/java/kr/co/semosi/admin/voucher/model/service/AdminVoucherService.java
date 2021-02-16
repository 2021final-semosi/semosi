package kr.co.semosi.admin.voucher.model.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import kr.co.semosi.admin.voucher.model.dao.AdminVoucherDAO;
import kr.co.semosi.admin.voucher.model.vo.ParentsVoucherView;
import kr.co.semosi.admin.voucher.model.vo.SitterVoucherView;

@Service("voucherService")
public class AdminVoucherService {
	@Resource(name="voucherDAO")
	private AdminVoucherDAO voucherDAO;

	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;

	public List<ParentsVoucherView> parentsVoucher(Map<String, Object> paramMap) {
		return voucherDAO.parentsVoucher(sqlSession,paramMap);
	}

	public int parentsVoucherContentCnt(Map<String, Object> paramMap) {
		return voucherDAO.parentsVoucherContentCnt(sqlSession,paramMap);
	}

	public int refundUpdate(int voucherNo, String phone) {
		return voucherDAO.refundUpdate(sqlSession,voucherNo,phone);
		
	}

	public List<SitterVoucherView> sitterVoucher(Map<String, Object> paramMap) {
		return voucherDAO.sitterVoucher(sqlSession,paramMap);
	}

	public int sitterVoucherContentCnt(Map<String, Object> paramMap) {
		return voucherDAO.sitterVoucherContentCnt(sqlSession,paramMap);
	}
}
