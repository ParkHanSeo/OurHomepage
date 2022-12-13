package com.naedam.admin.service.model.service;

import java.util.List;
import java.util.Map;

import com.naedam.admin.board.model.vo.Board;
import com.naedam.admin.board.model.vo.BoardAuthority;
import com.naedam.admin.board.model.vo.BoardComment;
import com.naedam.admin.board.model.vo.BoardFile;
import com.naedam.admin.board.model.vo.BoardOption;
import com.naedam.admin.board.model.vo.BoardTranslate;
import com.naedam.admin.board.model.vo.Post;
import com.naedam.admin.member.model.vo.Member;

public interface ServiceService {
	
	public Map<String, Object> getServiceList(Map<String,Object> map) throws Exception;
	
}