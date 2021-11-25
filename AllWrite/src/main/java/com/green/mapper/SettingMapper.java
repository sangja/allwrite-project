package com.green.mapper;

import java.util.List;

import com.green.vo.Setting;

public interface SettingMapper {
	int insert(Setting record);

	List<Setting> selectAll();
}