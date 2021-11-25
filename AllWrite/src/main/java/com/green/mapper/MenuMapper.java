package com.green.mapper;

import com.green.vo.MenuVO;

public interface MenuMapper {
	public void insert(MenuVO menu);
	public void insertSelectKey(MenuVO menu);
	public int update(MenuVO menu);
}
