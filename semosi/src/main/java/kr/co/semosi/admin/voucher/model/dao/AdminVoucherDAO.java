package kr.co.semosi.admin.voucher.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.admin.voucher.model.vo.ParentsVoucherView;
import kr.co.semosi.admin.voucher.model.vo.SitterVoucherView;

@Repository("voucherDAO")
public class AdminVoucherDAO {

	public List<ParentsVoucherView> parentsVoucher(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectList("voucher.parentsVoucher",paramMap);
	}

	public int parentsVoucherContentCnt(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectOne("voucher.parentsVoucherContentCnt",paramMap);
	}

	public int refundUpdate(SqlSessionTemplate sqlSession, int voucherNo, String phone) {
		ParentsVoucherView pv = new ParentsVoucherView();
		pv.setVoucherNo(voucherNo);
		pv.setPhone(phone);
		return sqlSession.update("voucher.refundUpdate",pv);
	}

	public List<SitterVoucherView> sitterVoucher(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectList("voucher.sitterVoucher",paramMap);
	}

	public int sitterVoucherContentCnt(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectOne("voucher.sitterVoucherContentCnt",paramMap);
	}

}
