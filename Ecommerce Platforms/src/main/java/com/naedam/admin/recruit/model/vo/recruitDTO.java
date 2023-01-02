package com.naedam.admin.recruit.model.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class recruitDTO {
	
	private int recruitNo;				//게시글 번호
	private String recruitTitle;		//제목
	private int recruitViewcount;		//조회수
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date recruitStart;			//채용 시작일
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date recruitEnd;			//채용 마감일
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date recruitDate;			//게시글 등록일
	private String career;				//경력
	private String recruitDelStatus;	//삭제여부
	private int rownum;
	
}
