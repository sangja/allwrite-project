package com.green.mapper;

import java.util.List;

import com.green.vo.Board;

public interface BoardMapper {

	int insert(Board record);

	List<Board> selectAll();
}