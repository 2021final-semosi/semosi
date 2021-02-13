package kr.co.semosi.index.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.index.model.vo.Index;
import kr.co.semosi.index.model.vo.IndexReviews;

@Repository("indexDAO")
public class IndexDAO {

	public Index applyCount(SqlSessionTemplate sqlSession) {
		System.out.println("[IndexDAO : applyCount] 호출 성공");
		
		Index countData=new Index();
		countData.setOfferCount((Integer)sqlSession.selectOne("index.offerCount"));
		countData.setSearchCount((Integer)sqlSession.selectOne("index.searchCount"));
		countData.setSitterCount((Integer)sqlSession.selectOne("index.sitterCount"));
		
		//System.out.println("[IndexDAO] 리턴");
		return countData;
	}

	public ArrayList<IndexReviews> selectRecentReviews(SqlSessionTemplate sqlSession) {
		System.out.println("[IndexDAO : selectRecentReviews] 호출 성공");
		
		List list=sqlSession.selectList("index.selectRecentReviews");
		
		return (ArrayList<IndexReviews>)list;
	}

}
