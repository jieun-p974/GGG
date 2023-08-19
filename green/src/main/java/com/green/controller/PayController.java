
package com.green.controller;

import java.util.HashMap;
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
	
	@RequestMapping(value={"/challengePay.do","/payment.do","/myCard.do"}) 
	public void getPay(Model model, String userId) {
		List<MemberVO> list = null; //
		List<MemberVO> list2 = null; //
		list = payService.getPay(userId);
		list2 = payService.getPay2(userId);  
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
	}
	
	// member card delete
	@RequestMapping(value = "/deleteCard.do")
	public String cardDelete(MemberVO vo) {
		memberService.cardDelete(vo);
		return "redirect:/member/mypage.do"; 
	}
	
	// member bank account delete
	@RequestMapping(value = "/deleteAccount.do")
	public String accountDelete(MemberVO vo) {
		memberService.accountDelete(vo);
		return "redirect:/member/mypage.do"; 
	}
	
	//간편결제로 결제할때(카드 VER)
	@RequestMapping(value="/save.do")
	public String chalMyCard(String id,int card_num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("card_num", card_num);
		
		payService.chalPay(map);
		payService.cardIn(map);
		payService.accIn(map);
		
		return "redirect:/member/main.do";
	}
	
	//간편결제로 결제할때(계좌 VER)
	@RequestMapping(value="/savechal.do")
	public String chalMyAcc(String id,int acc_num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("acc_num", acc_num);
		
		payService.chalPay(map);
		payService.accIn(map);
		
		return "redirect:/member/main.do";
	}
}