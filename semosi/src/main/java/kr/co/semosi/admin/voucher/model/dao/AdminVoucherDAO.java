package kr.co.semosi.admin.voucher.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.admin.voucher.model.vo.ParentsVoucherView;

@Repository("voucherDAO")
public class AdminVoucherDAO {

	public List<ParentsVoucherView> parentsVoucher(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectList("voucher.parentsVoucher",paramMap);
	}

	public int parentsVoucherContentCnt(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectOne("voucher.parentsVoucherContentCnt",paramMap);
	}

}
