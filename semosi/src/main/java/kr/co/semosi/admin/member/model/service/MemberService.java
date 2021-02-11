package kr.co.semosi.admin.member.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import kr.co.semosi.admin.member.model.dao.MemberDAO;
import kr.co.semosi.admin.member.model.vo.MemberP;
import kr.co.semosi.admin.member.model.vo.MemberS;

@Service("memberService")
public class MemberService {
    
    @Resource(name="memberDAO")
    private MemberDAO mDAO;
    
    @Resource(name="sqlSessionTemplate")
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

    public Object memberSList(Map<String, Object> paramMap) {
	return mDAO.membeSList(sqlSession, paramMap);
    }




}
