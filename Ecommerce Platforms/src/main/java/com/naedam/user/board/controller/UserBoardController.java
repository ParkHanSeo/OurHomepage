package com.naedam.user.board.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.binary.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.naedam.admin.board.model.service.BoardService;
import com.naedam.admin.board.model.vo.Board;
import com.naedam.admin.board.model.vo.BoardAuthority;
import com.naedam.admin.board.model.vo.BoardComment;
import com.naedam.admin.board.model.vo.BoardFile;
import com.naedam.admin.board.model.vo.BoardOption;
import com.naedam.admin.board.model.vo.Page;
import com.naedam.admin.board.model.vo.Post;
import com.naedam.admin.board.model.vo.Search;
import com.naedam.admin.common.Mir9Utils;
import com.naedam.admin.member.controller.MemberController;
import com.naedam.admin.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/user/board/*")
@Slf4j
public class UserBoardController {
	
	@Autowired
	private BoardService boardService;
	
	int pageUnit = 5;
	int pageSize = 5;

	
	//게시글 목록
	@RequestMapping( value="postList")
	public String listPost(Model model, HttpServletRequest request ,
						   @RequestParam("boardNo") int boardNo, 
						   @RequestParam(defaultValue = "1") int cPage,
						   @ModelAttribute("search") Search search) throws Exception {
		//게시글 리스트 수 limit 10으로
		int limit = 10;
		int offset = (cPage - 1) * limit;
		
		//게시글 리스트 옵션과 권한의 조건에 따라 태그를 생성해야 함
		Board board2 = boardService.getBoardAllData(boardNo);
		model.addAttribute("board2", board2);
		
		//게시글 리스트
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("boardNo", boardNo);
		Map<String, Object> resultMap = boardService.getPostList(map);
		int totalPostListCount = Integer.parseInt(resultMap.get("totalCount").toString());
		
		// pagebar
		String url = request.getRequestURI();
		String pagebar = Mir9Utils.getPagebar(cPage, limit, totalPostListCount, url);
		model.addAttribute("pagebar", pagebar);		
		model.addAttribute("list", resultMap.get("list")); 
		model.addAttribute("boardNo", boardNo);
		model.addAttribute("pageCount",totalPostListCount);
		return "user/board/postList";
	}
}

