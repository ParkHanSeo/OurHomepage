package com.naedam.admin.recruit.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.naedam.admin.common.Mir9Utils;
import com.naedam.admin.recruit.model.service.RecruitService;
import com.naedam.admin.recruit.model.vo.SearchDTO;
import com.naedam.admin.recruit.model.vo.recruitContentsDTO;
import com.naedam.admin.recruit.model.vo.recruitDTO;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/admin/*")
@Slf4j
public class RecruitController {

	@Autowired
	private RecruitService recruitService;

	// 채용 게시글 조회
	@RequestMapping("recruitList")
	public String recruitList(Model model, @RequestParam(defaultValue = "1") int cPage, HttpServletRequest request,
			@ModelAttribute("search") SearchDTO search) throws Exception {

		// 게시글 조회 한도
		int limit = 10;
		int offset = (cPage - 1) * limit;

		// 검색
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
		model.addAttribute("pageCount", totalRecruitListCount);

		return "admin/recruit/recruitList";

	}

	@PostMapping("deleteRecruit")
	public String deleteRecruit(@RequestParam(value = "postArr[]") List<Integer> postArr, Model model) {

		int recruitNum;
		int deleteResult = 0;

		for (int i = 0; i < postArr.size(); i++) {
			recruitNum = postArr.get(i);
			deleteResult = +recruitService.deleteRecruit(recruitNum);
		}
		;

		if (deleteResult == postArr.size()) {
			model.addAttribute("message", "삭제 성공!");
		} else {
			model.addAttribute("message", "삭제 실패!" + deleteResult);
		}

		System.out.println(">>> deleteResult: " + deleteResult);

		return null;

	}

	@PostMapping(value = "insertRecruit", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String insertRecruit(@RequestPart(value = "key" ,required = false) Map<String, Object> param,
			@RequestPart(value = "file",required = false) List<MultipartFile> fileList,
			HttpServletRequest request) throws Exception {

		int recruitRecult = 0;
		String msg="";

		System.out.println("param >>>>" + param);
		System.out.println("fileList >>>>" + fileList);
		
		
		/* param 안의 일부값 recruitDTO에 담기*/
		recruitDTO recruit = new recruitDTO();
		recruit.setRecruitTitle((String)param.get("recruitTitle"));
		recruit.setCareer((String)param.get("career"));
		
		recruit.setRecruitStart((String)param.get("recruitStart"));
		recruit.setRecruitEnd((String)param.get("recruitEnd"));
		
		// 채용 게시글 입력
		recruitRecult = recruitService.insertRecruit(recruit);

		// 채용 게시글 번호
		int curRecruitNo = recruit.getRecruitNo();

		System.out.println("curRecruitNo === " + curRecruitNo);

		/* 리스트 생성 */
		List<recruitContentsDTO> contentsList = new ArrayList<>();
		
		System.out.println("subTitle>>>>" + param.get("subTitle"));
		System.out.println("contents>>>>" + param.get("contents"));
		
		int size = ((List<String>) param.get("subTitle")).size();
		
		System.out.println("size>>>>>>>>>>>>>>>>" + size);
		
		for (int i = 0; i < size; i++) {
			
			recruitContentsDTO dtoContents = new recruitContentsDTO();
			
			/*세부 내용*/
			dtoContents.setRecruitSubTitle(((List<String>) param.get("subTitle")).get(i));
			dtoContents.setRecruitContents(((List<String>) param.get("contents")).get(i));
			
			/*세부 내용이 들어갈 채용 게시글 dto*/
			recruitDTO dtoRecruit = new recruitDTO();
			dtoRecruit.setRecruitNo(curRecruitNo);
			dtoContents.setRecruitNo(dtoRecruit);
			
			/*세부 내용안의 이미지file*/
			if ((fileList != null) && (fileList.size() > 0)) {
				//파일 처리 식별자 처리를 위한 UUID
				UUID uuid = UUID.randomUUID();
				//fileName 처리 (저장될 파일이름)
				String fileName = uuid + "_" + fileList.get(i).getOriginalFilename();
				dtoContents.setFileName(fileName);
				//filePath 처리
				String filePath =request.getServletContext().getRealPath("resources/imgs/imgrecruit");
				dtoContents.setFilePath(filePath);
				
				//파일 저장
				File saveFile = new File(filePath,fileName);
				fileList.get(i).transferTo(saveFile);

				System.out.println("fileName >> " + fileName);
				System.out.println("filePath >> " + filePath);

				}
			 contentsList.add(dtoContents);
			  
			 System.out.println("contents [" + i + "] >> " + contentsList);
			}
			  
			  int insertResult = recruitService.insertRecruitContents(contentsList);
			  
			  log.info("insertResult >>> " + insertResult);
			  
			  //채용 게시글 등록 완료 확인
			  if(recruitRecult ==1) {
				  msg = "게시글 등록이 완료 되었습니다."; 
				  // 채용게시글 상세내용 등록 확인
				  if(insertResult == size) {
					  msg = "채용 게시글 등록이 완료 되었습니다."; }
				  else {
					  msg = "채용 게시글 등록을 실패했습니다.";
				  }
			  }else {
				  msg = "게시글 등록을 실패했습니다.";
			  }
		

		return msg;

	}
	
	@GetMapping("getRecruitData")
	@ResponseBody
	public Map<String, Object> getRecruitData(Model model,@RequestParam("postNo") int recruitNo) {
		//필요한 데이터
		//제목, 채용시작일, 채용마감일, 경력, 소제목1, 내용1, 파일1, 소제목2, 내용2, 파일2....
		System.out.println("======= getRecruitData 실행 =========");
		System.out.println("postNo>>>>" + recruitNo);
		
		//채용글 1차
		recruitDTO recruitData = recruitService.getRecruitData(recruitNo);
		System.out.println("recruitData>>>>" + recruitData.getRecruitStart());
		
		//채용글 2차 (리스트 여러개)
		List<recruitContentsDTO> contents = recruitService.getContentsData(recruitNo);
		System.out.println("contents>>>>" + contents);
		
		/*
		 * model.addAttribute("recruitData", recruitData);
		 * model.addAttribute("contents", contents);
		 */
		Map<String, Object> resultMap = new HashMap<>();
		
		resultMap.put("recruitData", recruitData);
		System.out.println("recruitData.recruitStart >>>" + recruitData.getRecruitStart());
		resultMap.put("contents", contents);
		
		System.out.println("getRecruitData resultMap >>>>>" + resultMap);
		
		return resultMap;
	}

}
