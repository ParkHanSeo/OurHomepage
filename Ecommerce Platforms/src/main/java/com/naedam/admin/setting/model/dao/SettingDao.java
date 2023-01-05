package com.naedam.admin.setting.model.dao;

import java.util.List;
import java.util.Map;

import com.naedam.admin.award.model.vo.Award;
import com.naedam.admin.category.model.vo.Category;
import com.naedam.admin.history.model.vo.History;
import com.naedam.admin.map.model.vo.Maps;
import com.naedam.admin.setting.model.vo.AdminMenu;
import com.naedam.admin.setting.model.vo.AdminSetting;
import com.naedam.admin.setting.model.vo.Locale;
import com.naedam.admin.setting.model.vo.SeoSetting;
import com.naedam.admin.setting.model.vo.SnsSetting;
import com.naedam.admin.setting.model.vo.Staff;
import com.naedam.admin.setting.model.vo.PGs.BillingPgSetting;
import com.naedam.admin.setting.model.vo.PGs.EximbaySetting;
import com.naedam.admin.setting.model.vo.PGs.KcpSetting;
import com.naedam.admin.setting.model.vo.PGs.KgIniSetting;
import com.naedam.admin.setting.model.vo.PGs.NaverShoppingSetting;
import com.naedam.admin.setting.model.vo.PGs.NaverpaySetting;
import com.naedam.admin.setting.model.vo.PGs.XpaySetting;

public interface SettingDao {

	List<Maps> selectMapList();

	List<History> selectHistoryList();

	List<Award> selectAwardList();
	
	List<Category> selectMenuCteList();

	List<AdminMenu> selectAdminMenuList();

	List<Locale> selectLocaleList();

	AdminSetting selectAdminSetting();

	int updateAdminSetting(AdminSetting adminSetting);

	int updateAdminMenu(String menuNo);

	int updateAdminMenuAllN();

	int updateLocaleAllN();

	int updateLocaleChoosen(String localeCode);

	int updateLocaleDefault(String localeCode);

	SeoSetting selectSeoSetting();

	int updateSeoSetting(SeoSetting seo);

	BillingPgSetting selectPgSetting();

	KgIniSetting selectKgIniSetting();

	EximbaySetting selectEximbaySetting();

	NaverShoppingSetting selectNaverShoppingSetting();

	NaverpaySetting selectNaverpaySetting();

	XpaySetting selectXpaySetting();

	KcpSetting selectKcpSetting();
	
	SnsSetting selectSnsSetting();
	
	int updateSnsSetting(SnsSetting snsSetting);

	int insertStaff(Staff staff);

	List<Staff> selectStaffList();

	int totalStaffListCount();

	int deleteStaff(int[] staffNo);

	List<Staff> searchStaffList(Map<String, Object> param);

	int selectsearchStaffListCount(Map<String, Object> param);

	int updateKgIniSetting(KgIniSetting kg);

	int updateXpaySetting(XpaySetting xpay);

	int updateKcpSetting(KcpSetting kcp);

	int updateBillingPgSetting(BillingPgSetting pg);

	int updateNaverpaySetting(NaverpaySetting naverpay);

	int updateNaverShoppingSetting(NaverShoppingSetting naverShopping);

	Staff selectOneStaffByStaffNo(int staffNo);

	Staff selectOneimgUrlBystaffNo(int staffNo);

	int deleteStaffImg(int staffNo);

	int updateStaff(Staff staff);

	int updateChangeOrderDown(int staffNo);

	Staff selectMaxOrder();

	int updateChangeOrderUp(Staff paramStaff);

	int updateChangeOrderUpNext(Staff paramStaff);

	Staff selectInputRowOrder(Staff paramStaff);

	Staff selectMinOrder();

	int updateChangeOrderDown(Staff paramStaff);

	int updateChangeOrderDownNext(Staff paramStaff);

	int updateChangeOrderUpNext(int input_row_order);


}
