package com.green.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.domain.MemberVO;
import com.green.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;

	// ȸ������
//	public String insertMember(MemberVO vo) throws IOException {
//		memberService.insertMember(vo);
//		return "redirect:/signup.do";
//	}

	
	
	
	
	@RequestMapping(value="{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("memberController ��û");
		return "/member/" + url;
	}
}
