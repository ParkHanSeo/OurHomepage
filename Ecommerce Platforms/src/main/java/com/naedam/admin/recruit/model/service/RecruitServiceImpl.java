package com.naedam.admin.recruit.model.service;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.naedam.admin.board.model.vo.Search;
import com.naedam.admin.recruit.model.dao.RecruitDao;
import com.naedam.admin.recruit.model.vo.SearchDTO;
import com.naedam.admin.recruit.model.vo.recruitContentsDTO;
import com.naedam.admin.recruit.model.vo.recruitDTO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class RecruitServiceImpl implements RecruitService {

	@Autowired
	private RecruitDao recruitDao;

	@Override
	public Map<String, Object> getRecruitList(Map<String, Object> map, int limit, int offset) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("list", recruitDao.getRecruitList(map, offset, limit));
		resultMap.put("totalCount", recruitDao.getTotalCount(map));
		
		return resultMap;
	}

	@Override
	public int deleteRecruit(int recruitNum) {
		
		int deleteResult = recruitDao.deleteRecruit(recruitNum);
		
		return deleteResult;
	}

	@Override
	public int insertRecruit(recruitDTO recruit) {
		
		log.info(">>>>>insertRecruitService 실행");
		
		int recruitResult = recruitDao.insertRecruit(recruit);
		
		System.out.println(">>>> recruitRecult: " + recruitResult);
		
		return recruitResult;
	}

	@Override
	public int insertRecruitContents(List<recruitContentsDTO> contentsList) {
		log.info(">>>>>insertRecruitContents 실행");
		int insertContentsResult = 0;
		
		for(int i = 0; i < contentsList.size(); i++) {
			insertContentsResult += recruitDao.insertRecruitContents(contentsList.get(i));
			System.out.println("contentsList.get(" + i + ") ==>" + contentsList.get(i));
		}
		
		return insertContentsResult;
	}
	
	
}
