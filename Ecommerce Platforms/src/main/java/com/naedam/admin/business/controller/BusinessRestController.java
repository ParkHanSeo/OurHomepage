package com.naedam.admin.business.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.naedam.admin.business.model.service.BusinessService;
import com.naedam.admin.business.model.vo.Business;

@RestController
@RequestMapping("/admin/business/*")
public class BusinessRestController {
	
	@Autowired
	private BusinessService businessService;
	
	@PostMapping("json/businessProcess")
	public Boolean BusinessProcess(@RequestParam(value = "businessArr[]") List<String> businessArr, 
		   @RequestParam("mode") String mode) throws Exception{
		Boolean result = false;
		Map<String, Object> businessMap = new HashMap<>();
		businessMap.put("mode", mode);
		businessMap.put("businessArr", businessArr);
		businessService.businessProcess(businessMap);
		result = true;
		return result;
	}
	
	@GetMapping("json/getBusiness/{businessNo}")
	public Business getBusiness(@PathVariable("businessNo") int businessNo) throws Exception{
		return businessService.getBusiness(businessNo);
	}
	
	@GetMapping("json/getBusinessList")
	public List<Business> getBusinessList() throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> resultMap = businessService.getBusinessList(map);
		List<Business> businessList = (List<Business>) resultMap.get("list");
		return businessList;
	}
}
