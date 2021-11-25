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
public class Image {

	private String fileName;// 255 �̹��� �ϳ��� ����� ������, �ƴ϶�� ������ ����, �뷮 ������, ��Ź����, �����̰� ������� �� ������
	private String uploadPath;// 255
	private String uuid;// 255
	private boolean image; //
}
