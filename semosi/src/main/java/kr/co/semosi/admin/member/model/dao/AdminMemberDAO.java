package kr.co.semosi.admin.member.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.admin.member.model.vo.CertifyView;
import kr.co.semosi.admin.member.model.vo.MemberP;
import kr.co.semosi.admin.member.model.vo.MemberS;

@Repository("adminMemberDAO")
public class AdminMemberDAO {

	public MemberP loginMember(SqlSessionTemplate sqlSession, MemberP mp) {
		MemberP memberP = sqlSession.selectOne("member.loginMember", mp);

		return memberP;
	}

	public List<MemberP> memberPList(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectList("member.memberPList", paramMap);
	}

	public List<MemberS> memberSList(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectList("member.memberSList", paramMap);
	}

	public int getMemberPCnt(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectOne("member.selectMemberPContentCnt", paramMap);
	}

	public int getMemberSCnt(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectOne("member.selectMemberSContentCnt", paramMap);
	}

	public int memberPEndYn(SqlSessionTemplate sqlSession, MemberP mp) {
		return sqlSession.update("member.memberPEndYn", mp);
	}

	public int memberSEndYn(SqlSessionTemplate sqlSession, MemberS ms) {
		return sqlSession.update("member.memberSEndYn", ms);
	}

	public CertifyView inCertify(SqlSessionTemplate sqlSession, String membersNo) {
		CertifyView certifyview = sqlSession.selectOne("member.inCertify", membersNo);
		return certifyview;
	}

	public int documentCretYN(SqlSessionTemplate sqlSession, String imageNo) {
		return sqlSession.update("member.documentCertYN", imageNo);
	}

	public int documentYN(SqlSessionTemplate sqlSession, String membersNo) {
		return sqlSession.update("member.documentYN", membersNo);
	}

}
