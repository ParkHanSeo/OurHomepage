package com.naedam.admin.business.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.naedam.admin.business.model.vo.Business;
import com.naedam.admin.business.model.vo.BusinessPost;

@Repository
public class BusinessDaoImpl implements BusinessDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	/**
	 * business Insert
	 */
	@Override
	public void addBusiness(Business business) throws Exception{
		sqlSession.insert("business.addBusiness", business);
	}
	

	@Override
	public void addBusinessPost(BusinessPost businessPost) throws Exception {
		sqlSession.insert("business.addBusinessPost", businessPost);
	}
	
	/**
	 * 
	 */
	@Override
	public Map<String,Object> getBusiness(int businessNo) throws Exception {
		return sqlSession.selectOne("business.getBusiness", businessNo);
	}
	
	/**
	 * 
	 */
	@Override
	public Map<String,Object> getBusinessPost(int businessPostNo) throws Exception {
		return sqlSession.selectOne("business.getBusinessPost", businessPostNo);
	}
	
	/**
	 * business Select
	 */
	@Override
	public List<Business> getBusinessList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("business.getBusinessList", map);
	}
	
	/**
	 * businessPost Select
	 */
	@Override
	public List<BusinessPost> getBusinessPostList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("business.getBusinessPostList", map);
	}
	
	/**
	 * business update
	 */
	@Override
	public void updateBusiness(Business business) throws Exception{
		sqlSession.update("business.updateBusiness", business);
	}

	/**
	 * businessPost update
	 */
	@Override
	public void updateBusinessPost(BusinessPost businessPost) throws Exception {
		sqlSession.update("business.updateBusinessPost", businessPost);
	}
	
	/**
	 * business delete
	 */
	@Override
	public void deleteChoiceBusiness(List<Integer> businessNo) throws Exception {
		sqlSession.delete("business.deleteChoiceBusiness", businessNo);
	}
	
	/**
	 * business delete
	 */
	@Override
	public void deleteChoiceBusinessPost(List<Integer> businessPostNo) throws Exception {
		sqlSession.delete("business.deleteChoiceBusinessPost", businessPostNo);
	}



	
}