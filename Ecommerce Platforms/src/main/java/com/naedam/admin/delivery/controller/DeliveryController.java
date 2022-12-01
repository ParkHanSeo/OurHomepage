package com.naedam.admin.delivery.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.naedam.admin.common.Mir9Utils;
import com.naedam.admin.delivery.model.service.DeliveryService;
import com.naedam.admin.delivery.model.vo.DeliveryCompany;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/admin/delivery")
@Slf4j
public class DeliveryController {
	@Autowired
	private DeliveryService deliveryService;
	
	/**
	 * doeso 정보 조회
	 * @param zipcode
	 * @return
	 */
	@GetMapping("/doseosangan")
	@ResponseBody
	public int doseosangan(int zipcode) {
		int result = deliveryService.selectDoseosanganFeeByZipcode(zipcode);
		
		return result;
	}
	
	/**
	 * 설정 => 택배사 DML 프로세서
	 * @param deliveryCompany
	 * @param deliComNoArr
	 * @return
	 */
	@ResponseBody
	@PostMapping("/deliveryCompanyProcess")
	public int deliveryCompanyProcess(@ModelAttribute DeliveryCompany deliveryCompany,
									  @RequestParam(value="checkedNo[]", required = false) List<Integer> deliComNoArr){
		Map<String, Object> map = new HashMap<>();
		map.put("deliveryCompany", deliveryCompany);
		map.put("deliComNoArr", deliComNoArr);
		int result = deliveryService.deliveryCompanyProcess(map);
		return result;
	}
	
	/**
	 * 설정 => 택배사 정보 조회
	 * @param comNo
	 * @return
	 */
	@PostMapping("/companyDetail")
	@ResponseBody
	public DeliveryCompany companyDetail(String comNo) {
		log.debug("comNo = {}",comNo);
		DeliveryCompany deliCom = deliveryService.selectOneDeliveryCompanyByComNo(comNo);
		return deliCom;
	}
	
	/**
	 * 설정 => 택배사 리스트 검색 조회
	 * @param jsonStr
	 * @return
	 */
	@ResponseBody
	@GetMapping("/companySearch")
	public List<DeliveryCompany> companySearch(String jsonStr) {
		Map<String, Object> param = Mir9Utils.parseJsonStr(jsonStr);
		
		List<DeliveryCompany> companyList = deliveryService.selectDeliveryCompanyListByParam(param);
		
		return companyList;
	}
	
	/**
	 * @param jsonStr
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@ResponseBody
	@GetMapping("/updateDeliSet_Doseo")
	public int updateDeliSetDoseo(String jsonStr) throws Exception {
		Map<String, Object> param = Mir9Utils.parseJsonStr(jsonStr);
		int result = deliveryService.updateDeliverySettingByVo(param);
		return result;
	}
	
	
}
