package com.kh.dlog.widget.dday.model.vo;

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
public class Dday {
	private String ddayNo;
	private String memberNo;
	private String ddayTitle;
	private String ddayDate;
	private String ddayWidget;
}
