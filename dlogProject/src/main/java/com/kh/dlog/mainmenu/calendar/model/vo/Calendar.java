package com.kh.dlog.mainmenu.calendar.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Calendar {
	
	// field
	private int calendarNo;
	private int calendarWriter;
	private String calendarBeginDate;
	private String calendarEndDate;
	private String calendarBgColor;
	private String calendarFontColor;
	private String calendarBeginTime;
	private String calendarEndTime;
	private String calendarTitle;
	private String calendarContent;
	private String calendarStatus;
	
}
