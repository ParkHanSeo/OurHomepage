package com.naedam.admin.setting.model.service;

import java.util.List;
import java.util.Map;

import com.naedam.admin.award.model.vo.Award;
import com.naedam.admin.history.model.vo.History;

import com.naedam.admin.setting.model.vo.AdminMenu;
import com.naedam.admin.setting.model.vo.AdminSetting;


public interface SettingService {

	List<History> selectHistoryList();
	
	List<Award> selectAwardList();

	List<AdminMenu> selectAdminMenuList();

	AdminSetting selectAdminSetting();
	
	int infoProcess(Map<String, Object> map);

	int updateAdminSetting(AdminSetting adminSetting);

	int updateAdminMenu(String menuNo);

	int updateAdminMenuAllN();
	
}
