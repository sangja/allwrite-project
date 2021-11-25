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

public class a_MemberVO {
	long mno;// 30
	String name;// 10
	String id;// 30
	String password;// 30
	String email;// 50
	String mobileNumber;// 20
	String nickName;// 30
	Date regDate;//
	Date updateDate;//
}
