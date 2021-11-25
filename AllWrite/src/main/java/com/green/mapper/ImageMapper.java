package com.green.mapper;

import java.util.List;

import com.green.vo.Image;

public interface ImageMapper {

	int insert(Image record);

	List<Image> selectAll();
}