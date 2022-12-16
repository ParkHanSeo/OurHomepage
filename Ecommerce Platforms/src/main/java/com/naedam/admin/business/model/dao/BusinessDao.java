package com.naedam.admin.business.model.dao;

import java.util.List;
import java.util.Map;

import com.naedam.admin.business.model.vo.Business;
import com.naedam.admin.business.model.vo.BusinessPost;

public interface BusinessDao {
	
	//Business Insert
	public void addBusiness(Business business) throws Exception;
	
	//BusinessPost Insert
	public void addBusinessPost(BusinessPost businessPost) throws Exception;
	
	//Business SelectOne
	public Map<String,Object> getBusiness(int businessNo) throws Exception;
	
	//BusinessPost SelectOne
	public Map<String,Object> getBusinessPost(int businessPostNo) throws Exception;	
	
	//Business SelectList
	public List<Business> getBusinessList(Map<String, Object> map) throws Exception;
	
	//BusinessPost SelectList
	public List<BusinessPost> getBusinessPostList(Map<String, Object> map) throws Exception;
	
	//Business Update
	public void updateBusiness(Business business) throws Exception;
	
	//Business Update
	public void updateBusinessPost(BusinessPost businessPost) throws Exception;	
	
	//Business Delete
	public void deleteChoiceBusiness(List<Integer> businessNo) throws Exception;
	
	//Business Delete
	public void deleteChoiceBusinessPost(List<Integer> businessPostNo) throws Exception;
	
	
}
