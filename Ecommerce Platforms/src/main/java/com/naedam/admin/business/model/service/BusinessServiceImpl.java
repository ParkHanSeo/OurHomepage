package com.naedam.admin.business.model.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.naedam.admin.board.model.dao.BoardDao;
import com.naedam.admin.board.model.vo.BoardFile;
import com.naedam.admin.board.model.vo.BoardOption;
import com.naedam.admin.board.model.vo.Post;
import com.naedam.admin.business.model.dao.BusinessDao;
import com.naedam.admin.business.model.vo.Business;
import com.naedam.admin.business.model.vo.BusinessPost;
import com.naedam.admin.member.model.vo.Member;


@Service
public class BusinessServiceImpl implements BusinessService {

	@Autowired
	private BusinessDao businessDao;
	@Autowired
	private BoardDao boardDao;
	

	public void businessProcess(Map<String, Object> map) throws Exception{
		Business business = (Business) map.get("business");
		BoardOption boardOption = (BoardOption) map.get("boardOption");
		if("insert".equals(map.get("mode"))) {
			businessDao.addBusiness(business);
			boardOption.setOptionBoard(business.getBusinessNo());
			boardDao.addOption(boardOption);
		}else if("update".equals(map.get("mode"))) {
			businessDao.updateBusiness(business);
			boardDao.updateOption(boardOption);
		}else if("delete".equals(map.get("mode"))) {
			List<Integer> businessArr = (List<Integer>) map.get("businessArr");
			businessDao.deleteChoiceBusiness(businessArr);
		}
	}
	
	public void businessPostProcess(Map<String, Object> map) throws Exception{
		BusinessPost businessPost = (BusinessPost) map.get("businessPost");
		BoardFile boardFile = new BoardFile();
		if("insert".equals(map.get("mode")) || "update".equals(map.get("mode"))) {
			businessPost.setBusiness((Business) map.get("business"));
			Member member = boardDao.getMemberData(Integer.parseInt(map.get("secNo").toString()));
			businessPost.setBusinessMember(member);
			//파일 업로드 한개 이상 업로드가 가능하여 배열로 가져와서 업로드 로직 실행
			MultipartFile[] businessPostName = (MultipartFile[]) map.get("businessPostName");
			String[] businessPostName2 = (String[]) map.get("businessPostName2");
			MultipartFile ThombnailName = (MultipartFile) map.get("ThombnailName");
			File file = new File(map.get("filePath")+ThombnailName.getOriginalFilename());
			if("insert".equals(map.get("mode"))) {
				businessPost.setBusinessThombnail(ThombnailName.getOriginalFilename());
				ThombnailName.transferTo(file);
				businessDao.addBusinessPost(businessPost);
			}else if("update".equals(map.get("mode"))) {
				if(ThombnailName.isEmpty() == false) {
					businessPost.setBusinessThombnail(ThombnailName.getOriginalFilename());
					ThombnailName.transferTo(file);
				}else if(ThombnailName.isEmpty() == true) {
					Map<String, Object> thombnanilMap = businessDao.getBusinessPost(businessPost.getBusinessPostNo());
					businessPost.setBusinessThombnail((String)thombnanilMap.get("BUSINESS_THOMBNAIL"));
					ThombnailName.transferTo(file);
				}
				businessDao.updateBusinessPost(businessPost);
			}
		}else if("delete".equals(map.get("mode"))) {
			List<Integer> businessPostArr = (List<Integer>) map.get("businessPostArr");
			businessDao.deleteChoiceBusinessPost(businessPostArr);
		}
	}
	
	@Override
	public Map<String, Object> getBusiness(int businessNo) throws Exception {
		return businessDao.getBusiness(businessNo);
	}
	
	@Override
	public Map<String, Object> getBusinessPost(int businessPostNo) throws Exception {
		return businessDao.getBusinessPost(businessPostNo);
	}
	
	@Override
	public Map<String, Object> getBusinessList(Map<String, Object> map) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("list", businessDao.getBusinessList(map));
		return resultMap;
	}

	@Override
	public Map<String, Object> getBusinessPostList(Map<String, Object> map) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("list", businessDao.getBusinessPostList(map));
		return resultMap;
	}

}