package com.green.mapper;

import java.util.List;

import com.green.vo.Member;

public interface MemberMapper {

	int deleteByPrimaryKey(Integer mno);

	int insert(Member record);

	Member selectByPrimaryKey(Integer mno);

	List<Member> selectAll();

	int updateByPrimaryKey(Member record);
}