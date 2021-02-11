package kr.co.semosi.admin.member.model.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import kr.co.semosi.admin.member.model.dao.MemberDAO;
import kr.co.semosi.admin.member.model.vo.CertifyView;
import kr.co.semosi.admin.member.model.vo.MemberP;
import kr.co.semosi.admin.member.model.vo.MemberS;

@Service("memberService")
public class MemberService {

    @Resource(name = "memberDAO")
    private MemberDAO mDAO;

    @Resource(name = "sqlSessionTemplate")
    private SqlSessionTemplate sqlSession;

    public MemberP loginMember(MemberP mp) {
	MemberP memberP = mDAO.loginMember(sqlSession, mp);
	return memberP;
    }

    public int getMemberSCnt(Map<String, Object> paramMap) {
	return mDAO.getMemberSCnt(sqlSession, paramMap);
    }

    public int getMemberPCnt(Map<String, Object> paramMap) {
	return mDAO.getMemberPCnt(sqlSession, paramMap);
    }

    public List<MemberP> memberPList(Map<String, Object> paramMap) {
	return mDAO.memberPList(sqlSession, paramMap);
    }

    public List<MemberS> memberSList(Map<String, Object> paramMap) {
	return mDAO.memberSList(sqlSession, paramMap);
    }

    public int memberPEndYn(MemberP mp) {
	return mDAO.memberPEndYn(sqlSession, mp);
    }

    public int memberSEndYn(MemberS ms) {
	return mDAO.memberSEndYn(sqlSession, ms);
    }

    public CertifyView inCertify(String membersNo) {
	CertifyView certifyview = mDAO.inCertify(sqlSession, membersNo);
	return certifyview;
    }

    public int documentCretYN(String imageNo) {
	return mDAO.documentCretYN(sqlSession, imageNo);
    }

}
