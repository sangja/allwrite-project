package com.green.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString

public class d_PageDTO {
	private int startPage;// 255
	private int endPage;// 255
	private boolean prev, next;//
	private int total;// 255
	private c_CriteriaDTO cri;//

	public d_PageDTO(c_CriteriaDTO cri, int total) {
		this.cri = cri;
		this.total = total;

		this.endPage = (int) (Math.ceil(cri.getPageNum() / 10.0)) * 10;
		this.startPage = this.endPage - 9;
		int realEnd = (int) (Math.ceil((total * 1.0) / cri.getAmount()));
		if (realEnd < this.endPage)
			this.endPage = realEnd;
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}
}
