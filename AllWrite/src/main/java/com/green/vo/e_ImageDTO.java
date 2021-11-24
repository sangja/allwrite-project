package com.green.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString

public class e_ImageDTO {

	private String fileName;// 255 이미지 하나만 허용할 것인지, 아니라면 여러개 저장, 용량 제한은, 통신방법은, 딜레이가 어느정도 될 것인지
	private String uploadPath;// 255
	private String uuid;// 255
	private boolean image; //
}
