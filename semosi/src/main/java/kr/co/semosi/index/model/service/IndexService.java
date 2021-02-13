package kr.co.semosi.index.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.semosi.index.model.dao.IndexDAO;
import kr.co.semosi.index.model.vo.Index;
import kr.co.semosi.index.model.vo.IndexReviews;

@Service("indexService")
public class IndexService {

	@Autowired
	@Qualifier(value="indexDAO")
	private IndexDAO iDAO;
	
	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	public Index applyCount() {
		System.out.println("[IndexService : applyCount] 호출 성공");
		
		Index countData=iDAO.applyCount(sqlSession);
		
		//System.out.println("[IndexService] 리턴");
		return countData;
	}

	public ArrayList<IndexReviews> selectRecentReviews() {
		System.out.println("[IndexService : selectRecentReviews] 호출 성공");
		
		ArrayList<IndexReviews> list=iDAO.selectRecentReviews(sqlSession);
		
		return list;
	}

}
