package com.naedam.admin.business.model.service;

import java.util.Map;

import com.naedam.admin.business.model.vo.Business;

public interface BusinessService {
	
	public Business getBusiness(int BusinessNo) throws Exception;
	
	public Map<String, Object> getBusinessList(Map<String,Object> map) throws Exception;
	
	public void businessProcess(Map<String, Object> map) throws Exception;
}