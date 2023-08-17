
package com.green.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.domain.MemberVO;
import com.green.service.MemberService;
import com.green.service.PayService;

@Controller
@RequestMapping("/pay/")
public class PayController { // 화면만 이동(DB연결은 XX)

	@Autowired
	private PayService payService;
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("결제 요청");
		return "/pay/" + url;
	}
	
	@RequestMapping(value={"/challengePay.do","/payment.do"}) 
	public void getPay(Model model, String userId) {
		List<MemberVO> list = null;
		List<MemberVO> list2 = null;
		list = payService.getPay(userId);
		list2 = payService.getPay2(userId);
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
	}
	
	// member card delete
	@RequestMapping(value = "/deleteCard.do")
	public String cardDelete(MemberVO vo) {
		memberService.cardDelete(vo);
		System.out.println("payC"+vo.getId());
		memberService.cardNo(vo);
		
		return "redirect:/member/mypage.do"; 
	}
	
	// member bank account delete
	@RequestMapping(value = "/deleteAccount.do")
	public String accountDelete(MemberVO vo) {
		memberService.accountDelete(vo);
		memberService.accountNo(vo);
		
		return "redirect:/member/mypage.do"; 
	}
	
	
}