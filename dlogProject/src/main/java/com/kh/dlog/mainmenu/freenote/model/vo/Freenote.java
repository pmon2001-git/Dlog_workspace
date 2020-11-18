package com.kh.dlog.mainmenu.freenote.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Freenote {
	
	private int freenoteNo;
	private String freenoteTitle;
	private String freenoteContent;
	private String freenoteCategory;
	private String freenoteTopic;
	private String freenotePrivacy;
	private String freenotePrivacyComm;
	private String freenoteComment;
	private int freenoteCount;
	private int freenoteLike;
	private Date createDate;
	private Date modifyDate;
	private String status;
	private String freenoteWriter;

}
