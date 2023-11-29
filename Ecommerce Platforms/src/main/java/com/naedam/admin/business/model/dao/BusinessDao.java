package com.naedam.admin.business.model.dao;

import java.util.List;
import java.util.Map;

import com.naedam.admin.business.model.vo.Business;
import com.naedam.admin.business.model.vo.BusinessContents;
import com.naedam.admin.business.model.vo.BusinessPost;

public interface BusinessDao {
	
	//Business Insert
	public void addBusiness(Business business) throws Exception;
	
	//BusinessPost Insert
	public int addBusinessPost(BusinessPost businessPost) throws Exception;
	
	//BusinessContents Insert
	public int addBusinessContents(BusinessContents businessContents) throws Exception;
	
	//Business SelectOne
	public Business getBusiness(int businessNo) throws Exception;
	
	//BusinessPost SelectOne
	public BusinessPost getBusinessPost(int businessPostNo) throws Exception;	
	
	//BusinessContents SelectOne
	public BusinessContents getBusinessContents(int businessContentsNo) throws Exception;
	
	//Business SelectList
	public List<Business> getBusinessList(Map<String, Object> map) throws Exception;
	
	//BusinessPost SelectList
	public List<BusinessPost> getBusinessPostList(Map<String, Object> map) throws Exception;
	
	public List<BusinessPost> getBusinessPostAllList(Map<String, Object> map) throws Exception;
	
	//BusinessContents SelectList
	public List<BusinessContents> getBusinessContentsList(Map<String, Object> map) throws Exception;
	
	//Business Update
	public void updateBusiness(Business business) throws Exception;
	
	//Business Update
	public int updateBusinessPost(BusinessPost businessPost) throws Exception;	

	//BusinessContents Update
	public int updateBusinessContents(BusinessContents businessContents) throws Exception;
	
	//Business Delete
	public void deleteChoiceBusiness(List<Integer> businessNo) throws Exception;
	
	//Business Delete
	public int deleteChoiceBusinessPost(List<Integer> businessPostNo) throws Exception;

	//BusinessContents Delete
	public int deleteChoiceBusinessContents(List<Integer> businessConetentsNo) throws Exception;

	public int TotalBusinessPost(int businessNo);
	
}
