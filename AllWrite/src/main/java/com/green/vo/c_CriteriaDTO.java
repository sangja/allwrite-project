package com.green.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString

public class c_CriteriaDTO {

	int pageNum;// 5
	int amount;// 5
	String type;// 20
	String keyword;// 10

	public c_CriteriaDTO() {
		this(1, 10);
	}

	public c_CriteriaDTO(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split("");
	}
}
