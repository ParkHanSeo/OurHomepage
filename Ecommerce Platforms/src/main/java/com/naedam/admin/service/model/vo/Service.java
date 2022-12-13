package com.naedam.admin.service.model.vo;

import java.io.Serializable;
import java.util.Date;

import com.naedam.admin.member.model.vo.Member;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Service implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int serviceNo;			//service 테이블 primary 키
	private String serviceTitle; 		//게시판 제목
	private String serviceType;		//게시판 정보의 종류
	private String serviceCategory;   //게시판 카테고리
	private String serviceEmail;		//게시판 수신메일
	private Member serviceMemberNo;	//회원 데이터
	private int count;
	
	
	
	
}
