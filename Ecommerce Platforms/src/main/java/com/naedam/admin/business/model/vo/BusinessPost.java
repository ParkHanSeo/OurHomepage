package com.naedam.admin.business.model.vo;

import java.io.Serializable;

import com.naedam.admin.member.model.vo.Member;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class BusinessPost implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private int businessPostNo;
	private Business business;
	private String businessPostTitle;
	private String businessPostContents;
	private String businessPostDate;
	private String businessThombnail;
	private int businessNotice;
	private int businessOriginNo;		//계층형 쿼리를 위한 businessNo
	private int businessOrd;			//계층형 쿼리 1
	private int businessLayer;			//계층형 쿼리 2 답글의 답글
	private int businessAsc;			//순서변경
	private int businessViewCount;		//게시판종류 본횟수
	private int businessDownloadCount;  //다운로드수
	private Member businessMember;		//회원데이터

}
