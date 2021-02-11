package kr.co.semosi.index.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.semosi.index.model.dao.IndexDAO;
import kr.co.semosi.index.model.vo.Index;

@Service("indexService")
public class IndexService {

	@Autowired
	@Qualifier(value="indexDAO")
	private IndexDAO iDAO;
	
	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	public Index applyCount() {
		System.out.println("[IndexService] 호출 성공");
		
		Index countData=iDAO.applyCount(sqlSession);
		
		//System.out.println("[IndexService] 리턴");
		return countData;
	}

}
