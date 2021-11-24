package com.green.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString

public class b_BoardDTO {
	long bno;
	String title;
	String content;
	String writer;
	Date regDate;
	Date updateDate;
}
