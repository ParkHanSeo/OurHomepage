package com.naedam.admin.menu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.naedam.admin.menu.model.service.MenuService;
import com.naedam.admin.menu.model.vo.Bottom;
import com.naedam.admin.menu.model.vo.Head;
import com.naedam.admin.menu.model.vo.Menu;

@RestController
@RequestMapping("/admin/menu/*")
public class MenuRestController {
	
	@Autowired
	private MenuService menuService;
	
	@PostMapping("json/menuProcess")
	public Boolean menuProcess(@RequestParam(value = "menuArr[]") List<String> menuArr,
							   @RequestParam("mode") String mode,
							   @RequestParam("part") String part) throws Exception{
		Boolean result = false;
		
		MenuRequest menuRequest = new MenuRequest();
		menuRequest.setMenuArr(menuArr);
		menuRequest.setMode(mode);
		menuRequest.setPart(part);
		menuService.menuProcess(menuRequest);
		
//		Map<String, Object> menuMap = new HashMap<>();
//		menuMap.put("menuArr", menuArr);
//		menuMap.put("mode", mode);
//		menuMap.put("part", part);
//		menuService.menuProcess(menuMap);
		result = true;
		return result;
	}
	
	@PostMapping(value="json/getMenu")
	public Menu getMenu(@RequestParam("code") int code) throws Exception{
		return menuService.getMenu(code);	
	}
	
	@PostMapping(value="json/getHead")
	public Head getHead(@RequestParam("headNo") int headNo) throws Exception{
		return menuService.getHead(headNo);
	}
	
	@PostMapping(value="json/getBottom")
	public Bottom getBottom() throws Exception{
		return menuService.getBottom();
	}
	
	@PostMapping(value="json/getRevisionList")
	public Map getRevisionList(@RequestParam("code") int code) throws Exception{
		Menu menu = menuService.getMenu(code);
		menu.setOriginNo(code);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("menu", menu);
		Map<String, Object> resultMap = menuService.getRevisionList(map);
		return resultMap;
	}
	
	@PostMapping(value="json/deleteRevisionList")
	public Map deleteRevisionList() throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> resultMap = menuService.deleteRevisionList(map);
		return resultMap;
	}	
	
	@PostMapping("json/updateUpAsc")
	public Boolean updateUpAsc(@RequestParam("menuAsc") int menuAsc,
							@RequestParam("menuUpAsc") int menuUpAsc,
							@RequestParam("menuNo") int menuNo,
							@RequestParam("upMenuNo") int upMenuNo) throws Exception{
		Boolean result = false;
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> map2 = new HashMap<String, Object>();
		map.put("menuUpAsc", menuUpAsc);
		map.put("upMenuNo", menuNo);
		map2.put("menuUpAsc", menuAsc);
		map2.put("upMenuNo", upMenuNo);
		menuService.updateUpAsc(map);
		menuService.updateUpAsc(map2);
		result = true;
		return result;
	}
	
	@PostMapping("json/updateDownAsc")
	public Boolean updateDownAsc(@RequestParam("menuAsc") int menuAsc,
							@RequestParam("menuDownAsc") int menuDownAsc,
							@RequestParam("menuNo") int menuNo,
							@RequestParam("downMenuNo") int downMenuNo) throws Exception{
		Boolean result = false;
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> map2 = new HashMap<String, Object>();
		map.put("menuDownAsc", menuDownAsc);
		map.put("downMenuNo", menuNo);
		map2.put("menuDownAsc", menuAsc);
		map2.put("downMenuNo", downMenuNo);
		menuService.updateDownAsc(map);
		menuService.updateDownAsc(map2);
		result = true;
		return result;
	}
	
	@PostMapping("json/updateHeadUpAsc")
	public Boolean updateHeadUpAsc(@RequestParam("headAsc") int headAsc,
							@RequestParam("headUpAsc") int headUpAsc,
							@RequestParam("headNo") int headNo,
							@RequestParam("upHeadNo") int upHeadNo) throws Exception{
		Boolean result = false;
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> map2 = new HashMap<String, Object>();
		map.put("headUpAsc", headUpAsc);
		map.put("upHeadNo", headNo);
		map2.put("headUpAsc", headAsc);
		map2.put("upHeadNo", upHeadNo);
		menuService.updateHeadUpAsc(map);
		menuService.updateHeadUpAsc(map2);
		result = true;
		return result;
	}
	
	@PostMapping("json/updateHeadDownAsc")
	public Boolean updateHeadDownAsc(@RequestParam("headAsc") int headAsc,
							@RequestParam("headDownAsc") int headDownAsc,
							@RequestParam("headNo") int headNo,
							@RequestParam("downHeadNo") int downHeadNo) throws Exception{
		Boolean result = false;
		if(headNo != 0) {
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> map2 = new HashMap<String, Object>();
		map.put("headDownAsc", headDownAsc);
		map.put("downHeadNo", headNo);
		map2.put("headDownAsc", headAsc);
		map2.put("downHeadNo", downHeadNo);
		menuService.updateHeadDownAsc(map);
		menuService.updateHeadDownAsc(map2);
		result = true;
		}

		return result;
	}	
	
}





