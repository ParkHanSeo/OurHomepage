package com.naedam.admin.setting.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.naedam.admin.award.model.vo.Award;
import com.naedam.admin.common.NaedamUtils;
import com.naedam.admin.history.model.vo.History;
import com.naedam.admin.setting.model.service.SettingService;
import com.naedam.admin.setting.model.vo.AdminMenu;
import com.naedam.admin.setting.model.vo.AdminSetting;
import com.naedam.admin.setting.model.vo.Partner;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/admin/setting")
@Slf4j
public class SettingController {
	@Autowired
	private SettingService settingService;

	@Autowired
	ServletContext application;

	/**
	 * 설정 => 연혁 관리 조회
	 * @param model
	 */
	@GetMapping("/history")
	public String history(Model model, @RequestParam(defaultValue = "1") int cPage,
			HttpServletRequest request,
			@RequestParam(value = "locale", defaultValue = "ko")String locale) {
		// 게시글 조회 한도
		int limit = 10;
		int offset = (cPage - 1) * limit;
		
		List<History> historyList = settingService.selectHistoryList(limit, offset, locale);
		model.addAttribute("historyList", historyList);
		
		
		//게시글 총 갯수
		int totalRecruitListCount = settingService.selectAllHistoryList(locale);
		
		//페이징 처리
		String url = request.getRequestURI() + "?locale=" + locale;
		String pagebar = NaedamUtils.getPagebar(cPage, limit, totalRecruitListCount, url);
		
		model.addAttribute("pagebar", pagebar);
		model.addAttribute("pageCount", totalRecruitListCount);
		model.addAttribute("locale", locale);
		
		
		return "/admin/setting/history";
	}

	/**
	 * 설정 => 수상 관리 조회
	 * @param model
	 */
	@GetMapping("/award")
	public void award(Model model,@RequestParam(value = "locale", defaultValue = "ko") String locale) {
		List<Award> awardList = settingService.selectAwardList(locale);
		model.addAttribute("awardList", awardList);
		model.addAttribute("locale", locale);
	}
	/**
	 * 설정 => 기본 설정 => 기본, 언어, 관리자 메뉴 조회
	 * @param model
	 */
	@GetMapping("/info")
	public void info(Model model) {
		List<AdminMenu> adminMenuList = settingService.selectAdminMenuList();
		AdminSetting adminSetting = settingService.selectAdminSetting();
		model.addAttribute("adminSetting", adminSetting);
		model.addAttribute("adminMenuList", adminMenuList);
	}
	
	@PostMapping("partnerProcess")
	public String partnerProcess(@ModelAttribute("partner") Partner partner,
								 @RequestParam("mode") String mode,
								 @RequestParam(value="file", required = false) MultipartFile file,
								 HttpServletRequest request,
								 @RequestParam(value = "locale", defaultValue = "ko") String locale) throws Exception{
		String filePath = request.getSession().getServletContext().getRealPath("resources/user/images/partner/");
		Map<String, Object> partnerMap = new HashMap<>();
		partnerMap.put("partner", partner);
		partnerMap.put("mode", mode);
		partnerMap.put("file", file);
		partnerMap.put("filePath", filePath);
		partnerMap.put("locale", locale);
		settingService.partnerProcess(partnerMap);
		return "redirect:/admin/setting/listPartner?locale="+locale;
	}

	@RequestMapping(value="listPartner")
	public String listPartner(Model model, HttpServletRequest request ,
							  @RequestParam(defaultValue = "1") int cPage,
							  @RequestParam(value = "searchKeyword", required = false) String searchKeyword,
							  @RequestParam(value = "locale", defaultValue = "ko") String locale) throws Exception{
		//게시글 리스트 수 limit 10으로
		int limit = 10;
		int offset = (cPage - 1) * limit;
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchKeyword", searchKeyword);
		map.put("limit", limit);
		map.put("offset", offset);
		map.put("locale", locale);

		Map<String, Object> resultMap = settingService.adminPartnerList(map);
		model.addAttribute("list", resultMap.get("list"));
		model.addAttribute("totalCount", resultMap.get("totalCount"));

		// 페이징 처리
		String url = request.getRequestURI();
		String pagebar = NaedamUtils.getPagebar(cPage, limit, (int)resultMap.get("totalCount"), url);
		
		model.addAttribute("pagebar", pagebar);
		model.addAttribute("searchKeyword", searchKeyword);
		model.addAttribute("locale", locale);
		
		return "admin/setting/partnerList";
	}
	
	
	
}
