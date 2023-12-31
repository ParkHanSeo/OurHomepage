package com.naedam.admin.menu.model.service;

import java.util.Map;

import com.naedam.admin.menu.controller.MenuRequest;
import com.naedam.admin.menu.model.vo.Bottom;
import com.naedam.admin.menu.model.vo.Head;
import com.naedam.admin.menu.model.vo.Menu;

public interface MenuService {
	
	
	//메뉴 프로세서
	public String menuProcess(MenuRequest menuRequest) throws Exception;
	
	//메뉴 프로세서
	public String headProcess(MenuRequest menuRequest) throws Exception;
	
	//리비젼 생성
	public int addRevision(Menu menu) throws Exception;
	
	//메뉴 리스트
	public Map<String, Object> getMenuList(Map<String, Object> map) throws Exception;
	
	//조건식 메뉴 리스트
	public Map<String, Object> getMenuList2(Map<String, Object> map) throws Exception;
	
	//리비젼 리스트
	public Map<String, Object> getRevisionList(Map<String, Object> map) throws Exception;
	
	//삭제된 리비젼 리스트
	public Map<String, Object> deleteRevisionList(Map<String, Object> map) throws Exception;
	
	//헤더 리스트
	public Map<String, Object> getHeadList(Map<String, Object> map) throws Exception;
	
	//사용자 헤더 리스트
	public Map<String, Object> getUserHeadList(Map<String, Object> map) throws Exception;
	
	//메뉴 카테고리 리스트
	public Map<String, Object> getMenuCategoryList(Map<String, Object> map) throws Exception;
	
	//메뉴 카테고리 리스트2
	public Map<String, Object> getMenuCategoryList2(Map<String, Object> map) throws Exception;
	
	//삭제 리비전 복구
	public void updateRevision(int code) throws Exception;
	
	//메뉴 정보
	public Menu getMenu(int code) throws Exception;
	
	//헤더 정보
	public Head getHead(int headNo) throws Exception;
	
	//하단 정보
	public Bottom getBottom() throws Exception;
	
	//리비젼 가져오기
	public Menu getRevision(Menu menu) throws Exception;
	
	//메뉴 down순서변경
	public void updateDownAsc(Map<String, Object> map)throws Exception;
	
	//메뉴 up순서변경
	public void updateUpAsc(Map<String, Object> map)throws Exception;
	
	//헤드 down순서변경
	public void updateHeadDownAsc(Map<String, Object> map)throws Exception;
	
	//헤드 up순서변경
	public void updateHeadUpAsc(Map<String, Object> map)throws Exception;	
	
	//리비젼의 메뉴 삭제
	public void deleteMenu(int code) throws Exception;
}



