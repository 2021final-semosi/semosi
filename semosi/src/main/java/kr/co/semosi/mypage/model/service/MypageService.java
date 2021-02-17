package kr.co.semosi.mypage.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.semosi.jobsearch.model.dao.JobsearchDAO;
import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;
import kr.co.semosi.mypage.model.dao.MypageDAO;
import kr.co.semosi.mypage.model.vo.Criteria;

@Service("MypageService")
public class MypageService {
   
   @Autowired
   @Qualifier(value="MypageDAO")
   private MypageDAO myDAO;
   
   @Autowired
   @Qualifier(value="sqlSessionTemplate")
   private SqlSessionTemplate sqlSession;

   public int updateParentFrofile(ParentMember pMember) {
      System.out.println("[MypageService]: 정상호출");
      int result = myDAO.updateParentFrofile(sqlSession,pMember);
      
      return result;
      
   }

   public int updateSitterFrofile(SitterMember sMember) {
      System.out.println("[MypageService]: 정상호출");
      int result = myDAO.updateSitterFrofile(sqlSession,sMember);
      
      return result;
      
   }
   
	public Object listVoucherCriteria(Criteria cri, String memberNo) {
		// TODO Auto-generated method stub
		return null;
	}

	public int listVoucherCountCriteria(Criteria cri) {
		// TODO Auto-generated method stub
		return 0;
	}

   

   
}