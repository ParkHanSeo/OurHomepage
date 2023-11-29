package com.naedam.admin.recruit.model.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.naedam.admin.recruit.model.vo.recruitContentsDTO;
import com.naedam.admin.recruit.model.vo.recruitDTO;

public interface RecruitService {

	// 게시글 목록
	public Map<String, Object> getRecruitList(String search, int limit, int offset, String locale)throws Exception;

	// 게시글 삭제
	public int deleteRecruit(List<Integer> postArr);

	// 게시글 등록
	public int insertRecruit(recruitDTO recruit);

	// 게시글 파일 추가
	public int insertFile(List<MultipartFile> fileList,HttpServletRequest request, int curRecruitNo);

	// 게시글 상세 내용 등록
	public int insertRecruitContents(List<String> subTitle, List<String> contents, int curRecruitNo);

	// 게시글 수정을 위한 게시글 조회
	public recruitDTO getRecruitData(int recruitNo);

	// 게시글 수정을 위한 상세내용 조회
	public List<recruitContentsDTO> getContentsData(int recruitNo);

	// 게시글 수정
	public int updateRecruit(recruitDTO recruit);

	// 상세 내용 업데이트를 위한 삭제
	public int deleteRecruitContents(int curRecruitNo);

	//채용 게시글 상태값 변경
	public int updateContentsStatus();
	

	

	


	


	
	
}
