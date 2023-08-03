package com.green.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/") // 이 컨트롤러는 user 폴더 밑에서 가져옴
public class MemberController {
	@RequestMapping(value="{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("memberController 요청");
		return "/member/" + url;
	}
}
