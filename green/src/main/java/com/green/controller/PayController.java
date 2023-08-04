
package com.green.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.domain.MemberVO;
import com.green.service.PayService;

@Controller

@RequestMapping("/pay/")
public class PayController { // 화면만 이동(DB연결은 XX)

	@Autowired
	private PayService payService;
	
	@RequestMapping(value = "{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("결제 요청");
		return "/pay/" + url;
	}
	
	@RequestMapping(value="/challengePay.do")
	public void getPay(Model model, String userId) {
		List<MemberVO> list = null;
		list = payService.getPay(userId);
		model.addAttribute("list", list);
		System.out.println("간편결제 list");
	}
}
