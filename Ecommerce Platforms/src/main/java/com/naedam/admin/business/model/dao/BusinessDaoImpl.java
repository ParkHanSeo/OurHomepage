package com.naedam.admin.business.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.naedam.admin.business.model.vo.Business;

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
	
	/**
	 * 
	 */
	@Override
	public Business getBusiness(int businessNo) throws Exception {
		return sqlSession.selectOne("business.getBusiness", businessNo);
	}
	
	/**
	 * business Select
	 */
	@Override
	public List<Business> getBusinessList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("business.getBusinessList", map);
	}
	
	@Override
	public void updateBusiness(Business business) throws Exception{
		sqlSession.update("business.updateBusiness", business);
	}

	/**
	 * business delete
	 */
	@Override
	public void deleteChoiceBusiness(List<Integer> businessNo) throws Exception {
		sqlSession.delete("business.deleteChoiceBusiness", businessNo);
	}

	
}