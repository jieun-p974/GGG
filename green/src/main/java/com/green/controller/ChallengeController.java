package com.green.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.domain.ChallengeVO;
import com.green.service.ChallengeService;

@Controller
@RequestMapping("/challenge/")
public class ChallengeController {
	//화면만 이동(DB연결은 XX)
	@Autowired
	private ChallengeService challengeService;
	
	//�솕硫대쭔 �씠�룞(DB�뿰寃곗� XX)
	@RequestMapping(value="{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("챌랜지 요청");
		System.out.println("梨뚮옖吏� �슂泥�"+url);
		return "/challenge/"+url;
	}
	
	// 梨뚮┛吏� 紐⑸줉
	@RequestMapping("/adminChallenge.do")
	public void getChallengeList(Model model) {
		List<ChallengeVO> list = null;
		list = challengeService.getChallengeList();
		model.addAttribute("list", list);
	}
	
	// �벑濡�
	@RequestMapping(value="/save.do")
	public String challengeInsert(ChallengeVO vo) throws IOException{
		challengeService.insertChallenge(vo);
		return "redirect:/adminChallenge.do";
	}
}
