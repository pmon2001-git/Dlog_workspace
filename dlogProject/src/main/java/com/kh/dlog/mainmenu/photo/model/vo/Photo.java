package com.kh.dlog.mainmenu.photo.model.vo;

import java.sql.Date;
import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Photo {
	
	// field
	private int photoNo;
	private int photoWriter;
	private String photoOriginName;
	private String photoChangeName;
	private String photoDate;
	private Date photoEnrollDate;
	private String photoContent;
	private String photoStatus;
	private ArrayList<Photo> list; // 여러 개의 글을 동시에 DB에 넣고자 할 때 사용!
	private String[] deleteNums;
}
