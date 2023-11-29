package com.naedam.admin.business.model.service;

import java.util.List;
import java.util.Map;

import com.naedam.admin.business.controller.BusinessRequest;
import com.naedam.admin.business.model.vo.Business;
import com.naedam.admin.business.model.vo.BusinessContents;
import com.naedam.admin.business.model.vo.BusinessPost;

public interface BusinessService {
	
	public void businessProcess(BusinessRequest businessRequest) throws Exception;
	
	public boolean businessPostProcess(BusinessRequest businessRequest) throws Exception;
	
	public boolean businessContentsProcess(BusinessRequest businessRequest) throws Exception;
	
	public Business getBusiness(int BusinessNo) throws Exception;
	
	public BusinessPost getBusinessPost(int BusinessPostNo) throws Exception;
	
	public Map<String, Object> getBusinessList(Map<String,Object> map) throws Exception;
	
	public List<BusinessPost> getBusinessPostList(Map<String, Object> map) throws Exception;
	
	public List<BusinessPost> getBusinessPostAllList(Map<String, Object> map) throws Exception;
	
	public List<BusinessContents> getBusinessContentsList(Map<String, Object> map) throws Exception;
	
	public BusinessContents getBusinessContents(int businessPostNo) throws Exception;

	public int TotalBusinessPost(int businessNo);

}