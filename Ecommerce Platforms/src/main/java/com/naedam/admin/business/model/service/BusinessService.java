package com.naedam.admin.business.model.service;

import java.util.List;
import java.util.Map;

import com.naedam.admin.business.model.vo.Business;

public interface BusinessService {
	
	public void businessProcess(Map<String, Object> map) throws Exception;
	
	public void businessPostProcess(Map<String,Object> map) throws Exception;
	
	public Map<String, Object> getBusiness(int BusinessNo) throws Exception;
	
	public Map<String, Object> getBusinessPost(int BusinessPostNo) throws Exception;
	
	public Map<String, Object> getBusinessList(Map<String,Object> map) throws Exception;
	
	public Map<String, Object> getBusinessPostList(Map<String, Object> map) throws Exception;

}