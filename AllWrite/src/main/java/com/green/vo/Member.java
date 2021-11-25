package com.green.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor

public class Member {
	long mno;
	String name;
	String id;
	String password;
	String email;
	String mobileNumber;
	String nickName;
	Date regDate;
	Date updateDate;
}
