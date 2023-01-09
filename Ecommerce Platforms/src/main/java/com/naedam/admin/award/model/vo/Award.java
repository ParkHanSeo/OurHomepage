package com.naedam.admin.award.model.vo;

import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Award implements Serializable{

	private static final long serialVersionUID = 1L;
	private int awardNo;
	private Date awardDate; ;
	private String content;
	private String imgUrl;	
	
}
