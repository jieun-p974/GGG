package com.green.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pay/")
public class PayController {
	//ȭ�鸸 �̵�(DB������ XX)
	@RequestMapping(value="{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("���� ��û");
		return "/pay/"+url;
	}
}
