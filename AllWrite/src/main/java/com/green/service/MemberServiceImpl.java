package com.green.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.mapper.MemberMapper;
import com.green.vo.MemberVO;

import lombok.Setter;

@Service
public class MemberServiceImpl implements MemberService{
	@Setter(onMethod_=@Autowired)
	private MemberMapper mapper;
	
	
	@Override
	public void register(MemberVO member) {
		mapper.insert(member);
		
	}

	@Override
	public MemberVO get(int bno) {
		return mapper.read(bno);
	}

	@Override
	public int modify(MemberVO member) {
		int modifyResult = mapper.update(member);
		return modifyResult;
	}

	@Override
	public boolean remove(int bno) {
		
		return mapper.delete(bno) == 1;
	}

	@Override
	public List<MemberVO> getList(MemberVO member) {
		return mapper.getList();
	}

}
