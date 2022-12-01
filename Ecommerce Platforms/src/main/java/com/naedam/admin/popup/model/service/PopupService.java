package com.naedam.admin.popup.model.service;

import java.util.Map;

import com.naedam.admin.popup.model.vo.Popup;

public interface PopupService {
	
	Map<String, Object> popupProcess(Map<String, Object> map) throws Exception;

	Popup selectOnePopupByCode(int code);


}
