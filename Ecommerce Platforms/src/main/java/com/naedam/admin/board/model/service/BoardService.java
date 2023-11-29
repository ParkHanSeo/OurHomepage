package com.naedam.admin.board.model.service;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

import com.naedam.admin.board.model.vo.Board;
import com.naedam.admin.board.model.vo.BoardComment;
import com.naedam.admin.board.model.vo.BoardFile;
import com.naedam.admin.board.model.vo.BoardRequest;
import com.naedam.admin.board.model.vo.BoardTranslate;
import com.naedam.admin.board.model.vo.Post;
import com.naedam.admin.board.model.vo.PostRequest;
import com.naedam.admin.member.model.vo.Member;

public interface BoardService {
	
	//게시판 프로세서
	Map<String, Object> boardProcess(BoardRequest boardRequest) throws Exception;
	//게시글 프로세서
	Map<String, Object>postProcess(PostRequest postRequest) throws Exception;
	//게시판 등록의 번역
	
	public int addTranslate(BoardTranslate boardTranslate) throws Exception;
	
	//게시글 파일 등록
	public int addFile(BoardFile boardFile) throws Exception;
	
	//댓글 등록
	public int addComment(BoardComment boardComment) throws Exception;
	
	//게시판 목록
	public Map<String, Object> getBoardList(Map<String, Object> map) throws Exception;
	
	//댓글 목록
	public List<BoardComment> getCommentList(int postNo) throws Exception;
	
	//게시판 등록 글 수
	public int getTotalCount3(int boardNo) throws Exception;
	
	//hearder의 게시판 제목
	public List<Board> getBoardTitle(Map<String, Object> map) throws Exception;
	
	//게시글 목록
	public Map<String, Object> getPostList(Map<String, Object> map) throws Exception;
	
	//사용자 게시글 목록
	public List<Post> getUserPostList(Map<String, Object> map) throws Exception;
	
	//사용자 게시글 목록
	public List<Post> getMainPostList(Map<String, Object> map) throws Exception;
	
	//사용자 게시글 카운트
	public int getUserGetTotalCount(Map<String, Object> map) throws Exception;
	
	//게시판의 데이터
	public Board getBoardData(int boardNo) throws Exception;
	
	//게시글의 데이터
	public Post getPostData(int postNo) throws Exception;
	
	//공지사항의 상세 데이터
	public Map<String, Object> getNoticeDetail(Map<String, Object> map) throws Exception;
	
	//게시판의 모든 데이터
	public Board getBoardAllData(int boardNo) throws Exception;
	
	//회원의 데이터
	public Member getMemberData(int memberNo) throws Exception;
	
	//게시글의 모든 파일 데이터
	public List<BoardFile> getPostFile(int postNo) throws Exception;
	
	//파일 데이터
	public BoardFile getFileData(int fileNo) throws Exception;
	
	//파일 삭제
	public void deleteFile(int fileNo) throws Exception;
	
	//댓글 삭제
	public void deleteComment(int commentNo) throws Exception;
	
	//계층형 쿼리
	public int updatePostReply(Post post) throws Exception;
	
	//썸네일 삭제이지만 업데이트
	public int updateThombnail(Post post) throws Exception;

	//down순서변경
	public void updateDownAsc(Map<String, Object> map)throws Exception;
	
	//up순서변경
	public void updateUpAsc(Map<String, Object> map)throws Exception;	
	
	//게시글 조회수
	public int postViewCount(Post post) throws Exception;
	
	//다운로드수
	public int postFileCount(Post post) throws Exception;
	
	//게시판 list (dashBoard)
	public List<String> getBoardList(String locale);
	
	
}
