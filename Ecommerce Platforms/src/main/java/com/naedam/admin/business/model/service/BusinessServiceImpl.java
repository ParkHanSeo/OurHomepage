package com.naedam.admin.business.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naedam.admin.board.model.dao.BoardDao;
import com.naedam.admin.board.model.vo.BoardOption;
import com.naedam.admin.business.model.dao.BusinessDao;
import com.naedam.admin.business.model.vo.Business;


@Service
public class BusinessServiceImpl implements BusinessService {

	@Autowired
	private BusinessDao businessDao;
	@Autowired
	private BoardDao boardDao;
	

	@Override
	public Business getBusiness(int BusinessNo) throws Exception {
		return businessDao.getBusiness(BusinessNo);
	}
	
	@Override
	public Map<String, Object> getBusinessList(Map<String, Object> map) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("list", businessDao.getBusinessList(map));
		return resultMap;
	}
	
	public void businessProcess(Map<String, Object> map) throws Exception{
		Business business = (Business) map.get("business");
		BoardOption boardOption = (BoardOption) map.get("boardOption");
		if("insert".equals(map.get("mode"))) {
			businessDao.addBusiness(business);
			boardOption.setOptionBoard(business.getBusinessNo());
			boardDao.addOption(boardOption);
		}else if("update".equals(map.get("mode"))) {
			businessDao.updateBusiness(business);
			boardDao.updateOption(boardOption);
		}else if("delete".equals(map.get("mode"))) {
			List<Integer> businessArr = (List<Integer>) map.get("businessArr");
			businessDao.deleteChoiceBusiness(businessArr);
		}
	}

}