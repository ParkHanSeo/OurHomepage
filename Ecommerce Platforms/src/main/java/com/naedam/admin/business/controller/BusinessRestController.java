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

import com.naedam.admin.board.model.vo.Post;
import com.naedam.admin.business.model.service.BusinessService;
import com.naedam.admin.business.model.vo.Business;
import com.naedam.admin.business.model.vo.BusinessPost;

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
	
	@PostMapping("json/businessPostProcess")
	public Boolean BusinessPostProcess(@RequestParam(value = "businessPostArr[]") List<String> businessPostArr,
									   @RequestParam(value = "businessNo", required = false, defaultValue= "0") int businessNo,
									   @RequestParam("mode") String mode) throws Exception{
		BusinessPost businessPost = new BusinessPost();
		Boolean result = false;
		Map<String, Object> businessPostMap = new HashMap<>();
		businessPostMap.put("mode", mode);
		businessPostMap.put("businessNo", businessNo);
		businessPostMap.put("businessPostArr", businessPostArr);
		System.out.println("log === "+businessPostMap);
		businessService.businessPostProcess(businessPostMap);
		result = true;
		return result;
	}
	
	@GetMapping("json/getBusiness/{businessNo}")
	public Map<String, Object> getBusiness(@PathVariable("businessNo") int businessNo) throws Exception{ 
		return businessService.getBusiness(businessNo);
	}
	
	@GetMapping("json/getBusinessList")
	public List<Business> getBusinessList() throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> resultMap = businessService.getBusinessList(map);
		List<Business> businessList = (List<Business>) resultMap.get("list");
		return businessList;
	}
	
	@GetMapping(value="json/getBusinessPost/{businessPostNo}")
	public Map<String, Object> getBusinessPost(@PathVariable("businessPostNo") int businessPostNo)throws Exception{
		System.out.println("log === "+businessPostNo);
		return businessService.getBusinessPost(businessPostNo);
	}
}
