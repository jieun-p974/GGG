package com.green.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/community/")
public class CommunityController {
	//ȭ�鸸 �̵�(DB������ XX)
	@RequestMapping(value="{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("Ŀ�´�Ƽ ��û");
		return "/community/"+url;
	}
}
