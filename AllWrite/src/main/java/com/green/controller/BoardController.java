package com.green.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.green.service.MemberService;
import com.green.vo.memberDTO;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/board/*")
@Slf4j
public class BoardController {
	@Setter(onMethod_ = @Autowired)
	private MemberService service;

	@GetMapping("/index")
	public void indexTest() {

	}

	@GetMapping("/documentSetup")
	public void setUp() {

	}

	@GetMapping("/list")
	public String getList(memberDTO member, Model model) {
		System.out.println("1) 而⑦듃濡ㅻ윭 �벑濡� post " + member);

		model.addAttribute("list", service.getList(member));
		return "/board/list";
	}

	@GetMapping({ "/write", "/get", "/modify" })
	public void wirte(@RequestParam("bno") int bno, memberDTO member, Model model) {
		model.addAttribute("board", service.get(bno));
		model.addAttribute("list", service.getList(member));
		System.out.println("1)");
		// return "/board/register";
	}

	@GetMapping(value = "/board/{bno}", produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<memberDTO>> getListMember(@PathVariable("bno") int bno, memberDTO member, Model model) {
		log.info("member: " + member);
		model.addAttribute("list", service.getList(member));
		return new ResponseEntity<>(service.getList(member), HttpStatus.OK);
	}

	@PostMapping("/modify")
	public String modify(memberDTO member, RedirectAttributes rttr) {
		if (service.modify(member) == 1)
			rttr.addFlashAttribute("result", "success");
		return "redirect:/board/list";
	}

	@PostMapping("/remove")
	public String remove(@RequestParam("bno") int bno, RedirectAttributes rttr) {
		if (service.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/board/list";
	}

}