package com.green.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString

public class e_ImageDTO {

	private String fileName;// 255 �̹��� �ϳ��� ����� ������, �ƴ϶�� ������ ����, �뷮 ������, ��Ź����, �����̰� ������� �� ������
	private String uploadPath;// 255
	private String uuid;// 255
	private boolean image; //
}
