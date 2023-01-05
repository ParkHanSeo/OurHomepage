package com.naedam.admin.award.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.naedam.admin.award.model.service.AwardService;
import com.naedam.admin.award.model.vo.Award;

@Controller
@RequestMapping("/admin/award")
public class AwardController {

	@Autowired
	private AwardService awardService;
	
	/**
	 * 설정 => 연혁 관리 DML 프로세스
	 * @param request
	 * @param history
	 * @param redirectAttr
	 * @return
	 * @throws Exception
	 */
	@PostMapping("award_process")
	public String award_process(HttpServletRequest request, Award award, RedirectAttributes redirectAttr) throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("award", award);
		map.put("mode", request.getParameter("mode"));
		map.put("request", request);
		Map<String, Object> resultMap = awardService.awardProcess(map);
		redirectAttr.addFlashAttribute("msg", (String)resultMap.get("msg"));
		return "/admin/setting/history";
	}
	
}
