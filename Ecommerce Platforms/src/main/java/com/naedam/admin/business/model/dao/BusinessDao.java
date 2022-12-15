package com.naedam.admin.business.model.dao;

import java.util.List;
import java.util.Map;

import com.naedam.admin.business.model.vo.Business;

public interface BusinessDao {
	
	//Business Insert
	public void addBusiness(Business business) throws Exception;
	
	//Business SelectOne
	public Business getBusiness(int businessNo) throws Exception;
	
	//Business SelectList
	public List<Business> getBusinessList(Map<String, Object> map) throws Exception;
	
	//Business Update
	public void updateBusiness(Business business) throws Exception;
	
	//Business Delete
	public void deleteChoiceBusiness(List<Integer> serviceNo) throws Exception;
	
}
