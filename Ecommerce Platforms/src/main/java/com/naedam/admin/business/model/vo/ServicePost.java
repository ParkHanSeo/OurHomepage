package com.naedam.admin.service.model.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ServicePost implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private int servicePostNo;
	private Service service;
	private String servicePostTitle;
	private String servicePostContents;
	private String servicePostDate;

}
