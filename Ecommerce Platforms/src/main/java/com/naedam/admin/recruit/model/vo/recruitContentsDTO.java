package com.naedam.admin.recruit.model.vo;

import java.util.List;

import lombok.Data;

@Data
public class recruitContentsDTO {
	
	private int recruitConNo;			//게시글 내용 번호
	private String recruitSubTitle;		//서브타이틀
	private String recruitContents;		//채용 상세내용
	private String fileName;			//이미지 파일 이름
	private String filePath;			//이미지 파일 경로
	private recruitDTO recruitNo;		//채용 게시글 번호

	
}
