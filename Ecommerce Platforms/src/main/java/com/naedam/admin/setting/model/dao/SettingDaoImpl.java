package com.naedam.admin.setting.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naedam.admin.award.model.vo.Award;
import com.naedam.admin.history.model.vo.History;

import com.naedam.admin.setting.model.vo.AdminMenu;
import com.naedam.admin.setting.model.vo.AdminSetting;

@Repository
public class SettingDaoImpl implements SettingDao {
	@Autowired
	private SqlSession session;

	@Override
	public List<History> selectHistoryList() {
		// TODO Auto-generated method stub
		return session.selectList("setting.selectHistoryList");
	}
	
	@Override
	public List<Award> selectAwardList() {
		// TODO Auto-generated method stub
		System.out.println("log++++"+session.selectList("setting.selectAwardList"));
		return session.selectList("setting.selectAwardList");
	}

	@Override
	public List<AdminMenu> selectAdminMenuList() {
		// TODO Auto-generated method stub
		return session.selectList("setting.selectAdminMenuList");
	}

	@Override
	public AdminSetting selectAdminSetting() {
		// TODO Auto-generated method stub
		return session.selectOne("setting.selectAdminSetting");
	}

	@Override
	public int updateAdminSetting(AdminSetting adminSetting) {
		// TODO Auto-generated method stub
		return session.update("setting.updateAdminSetting", adminSetting);
	}

	@Override
	public int updateAdminMenu(String menuNo) {
		// TODO Auto-generated method stub
		return session.update("setting.updateAdminMenu", menuNo);
	}

	@Override
	public int updateAdminMenuAllN() {
		// TODO Auto-generated method stub
		return session.update("setting.updateAdminMenuAllN");
	}

}
