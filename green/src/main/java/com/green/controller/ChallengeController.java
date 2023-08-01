package com.green.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/challenge/")
public class ChallengeController {
	//화면만 이동(DB연결은 XX)
	@RequestMapping(value="{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("챌랜지 요청");
		return "/challenge/"+url;
	}
}
