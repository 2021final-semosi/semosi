package kr.co.semosi.index.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.index.model.vo.Index;

@Repository("indexDAO")
public class IndexDAO {

	public Index applyCount(SqlSessionTemplate sqlSession) {
		System.out.println("[IndexDAO] 호출 성공");
		
		Index countData=new Index();
		countData.setOfferCount((Integer)sqlSession.selectOne("index.offerCount"));
		countData.setSearchCount((Integer)sqlSession.selectOne("index.searchCount"));
		countData.setSitterCount((Integer)sqlSession.selectOne("index.sitterCount"));
		
		//System.out.println("[IndexDAO] 리턴");
		return countData;
	}

}
