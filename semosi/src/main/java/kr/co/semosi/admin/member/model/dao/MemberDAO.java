package kr.co.semosi.admin.member.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.admin.member.model.vo.MemberP;
import kr.co.semosi.admin.member.model.vo.MemberS;

@Repository("memberDAO")
public class MemberDAO {

    public MemberP loginMember(SqlSessionTemplate sqlSession, MemberP mp) {
	MemberP memberP = sqlSession.selectOne("member.loginMember",mp);
	
	return memberP;
    }

    public ArrayList<MemberP> memberPAllList(SqlSessionTemplate sqlSession) {
	List Plist = sqlSession.selectList("member.memberPAllList");
	
	return (ArrayList<MemberP>)Plist;
    }

    public ArrayList<MemberS> memberSAllList(SqlSessionTemplate sqlSession) {
	List Slist = sqlSession.selectList("member.memberSAllList");
	
	return (ArrayList<MemberS>)Slist;
    }

    public List<MemberP> memberPList(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
	return sqlSession.selectList("memberPList", paramMap);
    }

    public int getMemberPCnt(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
	return sqlSession.selectOne("selectMemberPContentCnt", paramMap);
    }

    public List<MemberS> membeSList(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
	return sqlSession.selectList("memberSList", paramMap);
    }

    public int getMemberSCnt(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
	return sqlSession.selectOne("selectMemberSContentCnt", paramMap);
    }

}
