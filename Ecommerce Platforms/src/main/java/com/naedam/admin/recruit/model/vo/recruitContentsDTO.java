package com.naedam.admin.recruit.model.vo;

import java.util.List;

import lombok.Data;

@Data
public class recruitContentsDTO {
	
	private int recruitConNo;			//게시글 내용 번호
	private List<String> recruitSubTitle;		//서브타이틀
	private List<String> recruitContents;		//채용 상세내용
	private recruitDTO recruitNum;		//채용 게시글 번호
	
}
