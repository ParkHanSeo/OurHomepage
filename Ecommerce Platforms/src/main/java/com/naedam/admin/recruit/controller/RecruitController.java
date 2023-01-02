package com.naedam.admin.recruit.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.binary.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.naedam.admin.board.model.vo.Search;
import com.naedam.admin.common.Mir9Utils;
import com.naedam.admin.recruit.model.service.RecruitService;
import com.naedam.admin.recruit.model.vo.SearchDTO;
import com.naedam.admin.recruit.model.vo.recruitContentsDTO;
import com.naedam.admin.recruit.model.vo.recruitDTO;

import lombok.Getter;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/admin/*")
@Slf4j
public class RecruitController {
	
	@Autowired
	private RecruitService recruitService;
	
	// 채용 게시글 조회
	@RequestMapping("recruitList")
	public String recruitList(Model model, @RequestParam(defaultValue = "1") int cPage, HttpServletRequest request ,
			   @ModelAttribute("search") SearchDTO search) throws Exception {
		
		// 게시글 조회 한도
		int limit = 10;
		int offset = (cPage -1) * limit;
		
		//검색 
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		
		// 게시글 리스트
		Map<String, Object> resultMap = recruitService.getRecruitList(map, limit, offset);
		
		// 게시글 총 갯수
		int totalRecruitListCount = Integer.parseInt(resultMap.get("totalCount").toString());
		
		// 페이징 처리
		String url = request.getRequestURI();
		String pagebar = Mir9Utils.getPagebar(cPage, limit, totalRecruitListCount, url);
		
		model.addAttribute("pagebar", pagebar);		
		model.addAttribute("list", resultMap.get("list")); 
		model.addAttribute("pageCount",totalRecruitListCount);
		
		return "admin/recruit/recruitList";
		
	}
	
	@PostMapping("deleteRecruit")
	public String deleteRecruit(@RequestParam(value="postArr[]") List<Integer> postArr, Model model) {
		
		int recruitNum;
		int deleteResult = 0;
		
		for(int i=0; i < postArr.size(); i++) {
			recruitNum = postArr.get(i);
			deleteResult =+ recruitService.deleteRecruit(recruitNum);
		};
		
		if(deleteResult == postArr.size()) {
			model.addAttribute("message", "삭제 성공!");	
		} else {
			model.addAttribute("message", "삭제 실패!" + deleteResult);
		}
		
		System.out.println(">>> deleteResult: " + deleteResult);
		
		return null;
		
	}
	
	@PostMapping("insertRecruit")
	@ResponseBody
	public String insertRecruit (@ModelAttribute("recruit")recruitDTO recruit,
			@RequestParam(value="subTitle[]") List<String> subTitle,
			@RequestParam(value="contents[]") List<String> contents) {
		
		//,@ModelAttribute("contentsMap[]")ArrayList<Map<String, Object>> contentsMap
		
		int recruitRecult = 0;
		int recruitContentsRecult = 0;
		String msg;
		
		//채용 게시글 입력
		recruitRecult = recruitService.insertRecruit(recruit);
		
		System.out.println(" >> subTitle[]" + subTitle);
		System.out.println(" >> contents[]" + contents);
		
		/* 리스트 생성 */
		
		/* map에 배열하나씩 꺼내서 담기 후 생성한 리스트에 축*/
		
		
		//채용 게시글 상세내용 입력
		/*
		 * if(contentsMap != null) { System.out.println("recruitContents != null!!!!!");
		 * // recruitContentsRecult = recruitService.insertRecruitContents(contents); }
		 */
		
		/*
		 * if(recruitRecult == 1) { System.out.println("recruitRecult insert 성공!!!");
		 * if(contentsMap != null) { if(recruitContentsRecult == contentsMap.size()) {
		 * msg = "recruitContentsRecult insert 성공"; } else { msg =
		 * "recruitContentsRecult insert 실패"; } } else { msg =
		 * "recruitContentsRecult insert == null "; } } else { msg =
		 * "recruitRecult insert 실패"; }
		 */
		
		msg = "test 중입니다..";
		
		return msg;
		
	}
	
	

}

