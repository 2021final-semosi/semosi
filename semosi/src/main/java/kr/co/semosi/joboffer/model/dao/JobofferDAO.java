package kr.co.semosi.joboffer.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.joboffer.model.vo.JobOfferList;

@Repository("jobofferDAO")
public class JobofferDAO {

	public ArrayList<JobOfferList> selectSearchAllList(SqlSessionTemplate sqlSession, int page) {
		System.out.println("[JobofferDAO : selectSearchAllList] 호출 성공");
		
		List list=sqlSession.selectList("joboffer.selectSearchAllList", page);
		
		return (ArrayList<JobOfferList>)list;
	}

}
