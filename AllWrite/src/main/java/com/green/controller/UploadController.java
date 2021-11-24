package com.green.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.green.service.MemberService;
import com.green.vo.MemberVO;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UploadController {
	@Setter(onMethod_=@Autowired)
	private MemberService service;
	
	
	@GetMapping("/uploadAjax")
	public void uploadAjaxTest(MemberVO member, Model model) {
		log.info("파일 업로드 ajax 컨틀롤러");
		member.setBno(55);
		member.setBname("KKK");
		member.setBpassword("vvv");
		member.setBmemo("이게 왜 안나오지?");
		model.addAttribute("board", member);
	}

	
	@PostMapping("/uploadAjax")
	public String uploadMemo(MemberVO member) {
		service.register(member);
		return "redirect:/board/list";
	}
	
	
	@GetMapping("/display")
	@ResponseBody
	public ResponseEntity<List<MemberVO>> getListsMemo(@RequestBody MemberVO member){
		
		return new ResponseEntity<>(service.getList(member), HttpStatus.OK);	
	}
}
