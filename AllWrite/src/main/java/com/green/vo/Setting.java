package com.green.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor

public class Setting {
	private long sno;// 100
	private String print;// 30// web/mobile;
	private int width;// 5
	private int height;// 5
	private int unit; // 불분명
	private int column_num;// 5 => COLUMN NUM으로 변경 (예약어)
	private String column_gutter;// 100// e.g col-md-4
	private String orientation;// 30// portrait and landscape.
	private int margin_top;// 5
	private int margin_bottom;// 5
	private int margin_right;// 5
	private int margin_left;// 5
	private int bleed_top;// 5
	private int bleed_left;// 5
	private int bleed_bottom;// 5
	private int bleed_right;// 5
}
