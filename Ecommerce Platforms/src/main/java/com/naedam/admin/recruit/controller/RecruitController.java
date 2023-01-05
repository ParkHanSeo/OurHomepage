package com.naedam.admin.recruit.controller;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.binary.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.naedam.admin.board.model.vo.Search;
import com.naedam.admin.common.Mir9Utils;
import com.naedam.admin.recruit.model.service.RecruitService;
import com.naedam.admin.recruit.model.vo.SearchDTO;
import com.naedam.admin.recruit.model.vo.recruitContentsDTO;
import com.naedam.admin.recruit.model.vo.recruitDTO;
import com.naedam.admin.recruit.model.vo.recruitfileDTO;

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
	public String insertRecruit(@ModelAttribute("recruit") recruitDTO recruit,
			@RequestParam("subTitle[]") List<String> subTitle,
			@RequestParam("contents") ArrayList<String> contents,
			@RequestParam("files") ArrayList<MultipartFile> files,
			HttpServletRequest request){

		int recruitRecult = 0;
		String msg;

		// 채용 게시글 입력
		recruitRecult = recruitService.insertRecruit(recruit);

		// 채용 게시글 번호
		int curRecruitNo = recruit.getRecruitNo();

		System.out.println("curRecruitNo === " + curRecruitNo);

		/* 리스트 생성 */
		List<recruitContentsDTO> contentsList = new ArrayList<>();

		/* map에 배열하나씩 꺼내서 담기 후 생성한 리스트에 축적 */
		for (int i = 0; i < subTitle.size(); i++) {
			/* 개별값을 담을 dto */
			recruitContentsDTO dtoContents = new recruitContentsDTO();
			/* setRecruitNo 처리를 위한 dto */
			recruitDTO dtoRecruit = new recruitDTO();

			dtoRecruit.setRecruitNo(curRecruitNo);

			dtoContents.setRecruitSubTitle(subTitle.get(i));
			dtoContents.setRecruitContents(contents.get(i));
			dtoContents.setRecruitNo(dtoRecruit);

			if (files != null) {

				/* 파일 처리 */
				/* 식별자 처리를 위한 UUID */
				UUID uuid = UUID.randomUUID();
				/* fileName 처리 */
				String fileName = uuid + "_" + files.get(i).getOriginalFilename();
				dtoContents.setFileName(fileName);
				/* filePath 처리 */
				String filePath = request.getServletContext().getRealPath("resources/imgs/imgrecruit");
				dtoContents.setFilePath(filePath);

				System.out.println("fileName >> " + fileName);
				System.out.println("filePath >> " + filePath);

			}

			contentsList.add(dtoContents);

			System.out.println("contents [" + i + "] >> " + contentsList);

		}

		int insertResult = recruitService.insertRecruitContents(contentsList);

		log.info("insertResult >>> " + insertResult);

		// 채용 게시글 등록 완료 확인
		if (recruitRecult > 1) {
			msg = "게시글 등록이 완료 되었습니다.";
			// 채용 게시글 상세내용 등록 확인
			if (insertResult == subTitle.size()) {
				msg = "채용 게시글 등록이 완료 되었습니다.";
			} else {
				msg = "채용 게시글 등록을 실패했습니다.";
			}
		} else {
			msg = "게시글 등록을 실패했습니다.";
		}

		return msg;

	}

}
