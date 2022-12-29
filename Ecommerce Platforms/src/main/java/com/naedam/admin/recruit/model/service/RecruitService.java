package com.naedam.admin.recruit.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.naedam.admin.recruit.model.vo.recruitContentsDTO;
import com.naedam.admin.recruit.model.vo.recruitDTO;

public interface RecruitService {

	// 게시글 목록
	public Map<String, Object> getRecruitList(Map<String, Object> map, int limit, int offset)throws Exception;

	// 게시글 삭제
	public int deleteRecruit(int recruitNum);

	// 게시글 등록
	public int insertRecruit(recruitDTO recruit);

	// 게시글 상세내용 등록
	public int insertRecruitContents(ArrayList<recruitContentsDTO> recruitContents);



	
	
}
