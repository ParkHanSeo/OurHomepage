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
	private String businessPostSubTitle;
	private String businessPostText1;
	private String businessPostText2;
	private String businessPostContents;
	private String inDtm;
	private String businessPostIcon;
	private int businessOriginNo;		//계층형 쿼리를 위한 businessNo
	private int businessAsc;			//순서변경
	private Member businessMember;		//회원데이터

}
