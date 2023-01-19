package com.naedam.admin.recruit.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.naedam.admin.recruit.model.vo.recruitContentsDTO;
import com.naedam.admin.recruit.model.vo.recruitDTO;

public interface RecruitService {

	// 게시글 목록
	public Map<String, Object> getRecruitList(String search, int limit, int offset)throws Exception;

	// 게시글 삭제
	public int deleteRecruit(int recruitNum);

	// 게시글 등록
	public int insertRecruit(recruitDTO recruit);

	// 게시글 상세 내용 등록
	public int insertRecruitContents(List<recruitContentsDTO> contentsList);

	// 게시글 수정을 위한 게시글 조회
	public recruitDTO getRecruitData(int recruitNo);

	// 게시글 수정을 위한 상세내용 조회
	public List<recruitContentsDTO> getContentsData(int recruitNo);

	// 게시글 수정
	public int updateRecruit(recruitDTO recruit);

	// 상세 내용 업데이트를 위한 삭제
	public int deleteRecruitContents(int curRecruitNo);

	
	
}
