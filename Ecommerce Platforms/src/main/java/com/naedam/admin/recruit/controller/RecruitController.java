package com.naedam.admin.recruit.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.naedam.admin.common.Mir9Utils;
import com.naedam.admin.recruit.model.service.RecruitService;
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
			@RequestParam(value= "searchKeyword",required = false) String searchKeyword) throws Exception {
		System.out.println("update??? =====");
		
		//조회 전 마감일자 지난 list들 채용마감으로 변경
		int update = recruitService.updateContentsStatus();
		System.out.println("update 성공??? =====" + update);

		System.out.println("==========recruitList controller =================");
		System.out.println("searchKeyword >" +searchKeyword);
		
		// 게시글 조회 한도
		int limit = 10;
		int offset = (cPage - 1) * limit;

		// 게시글 리스트
		Map<String, Object> resultMap = recruitService.getRecruitList(searchKeyword, limit, offset);

		// 게시글 총 갯수
		int totalRecruitListCount = Integer.parseInt(resultMap.get("totalCount").toString());

		// 페이징 처리
		String url = request.getRequestURI();
		String pagebar = Mir9Utils.getPagebar(cPage, limit, totalRecruitListCount, url);
		
		model.addAttribute("pagebar", pagebar);
		model.addAttribute("list", resultMap.get("list"));
		model.addAttribute("pageCount", totalRecruitListCount);
		
		System.out.println("resultMap.get(\"list\")" + resultMap.get("list"));

		return "admin/recruit/recruitList";

	}

	@PostMapping("deleteRecruit")
	@ResponseBody
	public String deleteRecruit(@RequestParam(value = "postArr[]") List<Integer> postArr) {

		int recruitNum;
		int deleteResult = 0;

		for (int i = 0; i < postArr.size(); i++) {
			recruitNum = postArr.get(i);
			System.out.println("recruitNum" + i + ">>>>>" + recruitNum);
			deleteResult = +recruitService.deleteRecruit(recruitNum);
		}
		;

		if (deleteResult == postArr.size()) {
			System.out.println("게시글이 삭제 되었습니다.");
		} else {
			System.out.println("게시글이 삭제 되었습니다." + deleteResult);
		}

		return null;

	}

	@PostMapping(value = "insertRecruit", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String insertRecruit(@RequestPart(value = "key" ,required = false) Map<String, Object> param,
			@RequestPart(value = "file",required = false) List<MultipartFile> fileList,
			HttpServletRequest request) throws Exception {

		int recruitRecult = 0;
		String msg="";
		
		
		/* param 안의 일부값 recruitDTO에 담기*/
		recruitDTO recruit = new recruitDTO();
		recruit.setRecruitTitle(String.valueOf(param.get("recruitTitle")));
		recruit.setCareer(String.valueOf(param.get("career")));
		recruit.setRecruitStart(String.valueOf(param.get("recruitStart")));
		recruit.setRecruitEnd(String.valueOf(param.get("recruitEnd")));
		recruit.setJobTitle(String.valueOf(param.get("jobTitle")));
		recruit.setRecruitType(String.valueOf(param.get("recruitType")));
		recruit.setRecruitPlace(String.valueOf(param.get("recruitPlace")));
		recruit.setJobIntro(String.valueOf(param.get("jobIntro")));
		recruit.setQualification(String.valueOf(param.get("qualification")));
		recruit.setRecruitManager(String.valueOf(param.get("recruitManager")));
		recruit.setContentsStatus(String.valueOf(param.get("contentsStatus")));
		
		
		System.out.println("===recruitDTO recruit==== : " + recruit);
		
		//file 등록
		/*세부 내용안의 이미지file*/
		if ((fileList != null) && (fileList.size() > 0)) {
			//오리지널 이름 입력
			recruit.setOrgFileName(fileList.get(0).getOriginalFilename());
			//파일 처리 식별자 처리를 위한 UUID
			UUID uuid = UUID.randomUUID();
			//fileName 처리 (저장될 파일이름)
			String fileName = uuid + "_" + fileList.get(0).getOriginalFilename();
			recruit.setFileName(fileName);
			//filePath 처리
			String filePath =request.getServletContext().getRealPath("resources/imgs/imgrecruit/");
			
			//cafe24 filePath test
//			String filePath ="/ndcnc/tomcat/webapps3/ROOT/resources/imgs/imgrecruit";
			recruit.setFilePath(filePath);
			
			//파일 저장
			File saveFile = new File(filePath,fileName);
			fileList.get(0).transferTo(saveFile);

			}

		// 채용 게시글 입력
		recruitRecult = recruitService.insertRecruit(recruit);

		// 채용 게시글 번호
		int curRecruitNo = recruit.getRecruitNo();		
		/* 리스트 생성 */
		List<recruitContentsDTO> contentsList = new ArrayList<>();
		
		int insertResult = 0;
		int size = 0;
		
		if(param.get("subTitle") != null){
			
			size = ((List<String>) param.get("subTitle")).size();

			
			for (int i = 0; i < size; i++) {
				
				recruitContentsDTO dtoContents = new recruitContentsDTO();
				
				/*세부 내용*/
				dtoContents.setRecruitSubTitle(((List<String>) param.get("subTitle")).get(i));
				dtoContents.setRecruitContents(((List<String>) param.get("contents")).get(i));
				
				/*세부 내용이 들어갈 채용 게시글 dto*/
				recruitDTO dtoRecruit = new recruitDTO();
				dtoRecruit.setRecruitNo(curRecruitNo);
				dtoContents.setRecruitNo(dtoRecruit);
				
				contentsList.add(dtoContents);
				  
				 System.out.println("contents [" + i + "] >> " + contentsList);
			}
			
			insertResult = recruitService.insertRecruitContents(contentsList);
			  
			log.info("insertResult >>> " + insertResult);
			
		}
		
			  
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
		System.out.println("======= getRecruitData 실행 =========");
		
		//채용글 1차
		recruitDTO recruitData = recruitService.getRecruitData(recruitNo);
		
		//채용글 2차 (리스트 여러개)
		List<recruitContentsDTO> contents = recruitService.getContentsData(recruitNo);
		
		Map<String, Object> resultMap = new HashMap<>();
		
		resultMap.put("recruitData", recruitData);
		resultMap.put("contents", contents);
	
		
		return resultMap;
	}
	
	
	@PostMapping(value = "updateRecruit", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String updateRecruit(@RequestPart(value = "key" ,required = false) Map<String, Object> param,
			@RequestPart(value = "file",required = false) List<MultipartFile> fileList,
			HttpServletRequest request) throws Exception {

		int recruitResult = 0;
		String msg="";

		System.out.println("updateparam >>>>" + param);
		System.out.println("updatefileList >>>>" + fileList);
		
		int recruitNo = Integer.parseInt(String.valueOf(param.get("recruitNo")));
		
		/* param 안의 일부값 recruitDTO에 담기*/
		recruitDTO recruit = new recruitDTO();
		recruit.setRecruitNo(recruitNo);
		recruit.setRecruitTitle((String)param.get("recruitTitle"));
		recruit.setCareer((String)param.get("career"));
		recruit.setJobTitle((String)param.get("jobTitle"));
		recruit.setRecruitType((String)param.get("recruitType"));
		recruit.setRecruitPlace((String)param.get("recruitPlace"));
		recruit.setJobIntro((String)param.get("jobIntro"));
		recruit.setQualification((String)param.get("qualification"));
		recruit.setRecruitManager((String)param.get("recruitManager"));
		recruit.setContentsStatus((String)param.get("contentsStatus"));
		
		System.out.println("orgFileName>>>>>>>>>>" + param.get("orgFileName"));
		
		System.out.println("===updateRecruitrecruitDTO recruit==== : " + recruit);
		
		recruit.setRecruitStart((String)param.get("recruitStart"));
		recruit.setRecruitEnd((String)param.get("recruitEnd"));
		
		//file 등록
		/*세부 내용안의 이미지file*/
		if ((fileList != null) && (fileList.size() > 0)) {
			//오리지널 이름 입력
			recruit.setOrgFileName(fileList.get(0).getOriginalFilename());
			System.out.println("dtoContents.setOrgName >>>>>" + fileList.get(0).getOriginalFilename());
			//파일 처리 식별자 처리를 위한 UUID
			UUID uuid = UUID.randomUUID();
			//fileName 처리 (저장될 파일이름)
			String fileName = uuid + "_" + fileList.get(0).getOriginalFilename();
			recruit.setFileName(fileName);
			//filePath 처리
			String filePath =request.getServletContext().getRealPath("resources/imgs/imgrecruit");
			recruit.setFilePath(filePath);
			
			//파일 저장
			File saveFile = new File(filePath,fileName);
			fileList.get(0).transferTo(saveFile);
			System.out.println("saveFile ============" + saveFile);

			System.out.println("fileName >> " + fileName);
			System.out.println("filePath >> " + filePath);

			}

		
		// 채용 게시글 업데이트
		recruitResult = recruitService.updateRecruit(recruit);

		System.out.println("curRecruitNo === " + recruitNo);
		
		//업데이트를 위해 상세 내용 삭제
		int deleteResult = recruitService.deleteRecruitContents(recruitNo);
		System.out.println("삭제 상태 ====== " + deleteResult );
		
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
			dtoRecruit.setRecruitNo(recruitNo);
			dtoContents.setRecruitNo(dtoRecruit);
			
			contentsList.add(dtoContents);
			  
			 System.out.println("contents [" + i + "] >> " + contentsList);
			}
			  
			  int insertResult = recruitService.insertRecruitContents(contentsList);
			  
			  log.info("insertResult >>> " + insertResult);
			  
			  //채용 게시글 등록 완료 확인
			  if(recruitResult ==1) {
				  msg = "게시글 수정이 완료 되었습니다."; 
				  // 채용게시글 상세내용 등록 확인
				  if(insertResult == size) {
					  msg = "채용 게시글 수정이 완료 되었습니다."; }
				  else {
					  msg = "채용 게시글 수정을 실패했습니다.";
				  }
			  }else {
				  msg = "게시글 수정을 실패했습니다.";
			  }
		

		return msg;

	}

}
