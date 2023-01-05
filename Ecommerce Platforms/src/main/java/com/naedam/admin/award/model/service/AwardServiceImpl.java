package com.naedam.admin.award.model.service;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naedam.admin.award.model.dao.AwardDao;
import com.naedam.admin.award.model.vo.Award;

@Service
public class AwardServiceImpl implements AwardService {

	@Autowired
	private AwardDao awardDao;
	
	@Override
	public Map<String, Object> awardProcess(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> resultMap = new HashMap<>();
		Award award = (Award) map.get("award");
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		if("insert".equals(map.get("mode")) || "update".equals(map.get("mode"))) {
			StringBuilder str = new StringBuilder();
			SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
			Date resultDate = new Date();
			str.append(request.getParameter("year"));
			if(request.getParameter("month").length() < 2) {
				str.append("0"+request.getParameter("month"));
			}else {
				str.append(request.getParameter("month"));
			}
			if(request.getParameter("date").length() < 2) {
				str.append("0" + request.getParameter("date"));
			}else {
				str.append(request.getParameter("date"));
			}
			resultDate = formatter.parse(str.toString());
			Date date = resultDate;
			award.setAwardDate(date);
			if("insert".equals(map.get("mode"))) {
				awardDao.insertAward(award);
				resultMap.put("msg", "연혁 정보가 등록되었습니다.");
			}else if("update".equals(map.get("mode"))) {
				awardDao.updateAward(award);
				resultMap.put("msg", "연혁 정보가 수정되었습니다.");
			}
		}else if("delete".equals(map.get("mode"))) {
			List<String> historyNoList = Arrays.asList(request.getParameterValues("list[]"));
			for(String no : historyNoList) {
				awardDao.deleteAward(Integer.parseInt(no));
			}
			resultMap.put("msg", "연혁이 삭제되었습니다.");
		}
		
		return resultMap;
	}
}
