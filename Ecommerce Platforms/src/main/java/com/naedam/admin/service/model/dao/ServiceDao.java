package com.naedam.admin.service.model.dao;

import java.util.List;
import java.util.Map;

import com.naedam.admin.service.model.vo.Service;

public interface ServiceDao {
	
	//서비스 목록
	public List<Service> getServiceList(Map<String, Object> map) throws Exception;
	
}
