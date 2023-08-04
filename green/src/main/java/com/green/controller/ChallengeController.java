package com.green.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.domain.ChallengeVO;
import com.green.service.ChallengeService;

@Controller
@RequestMapping("/challenge/")
public class ChallengeController {
	@Autowired
	private ChallengeService challengeService;

	// 화면만 이동(DB연결은 XX)
	@RequestMapping(value = "{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("챌랜지 요청" + url);
		return "/challenge/" + url;
	}

	// insert
	@RequestMapping(value = "/saveChallenge.do")
	public String challengeInsert(ChallengeVO vo) throws IOException {
		challengeService.insertChallenge(vo);
		return "redirect:adminChallenge.do";
	}

	// get challenge list - user or admin
	@RequestMapping(value = {"challengeList.do","/adminChallenge.do"})
	public void getChallengeList(Model model) {
		List<ChallengeVO> list = null;
		list = challengeService.getChallengeList();
		model.addAttribute("list", list);
	}

	// get one
	@RequestMapping("/challengeModify.do")
	public void getChallengeDetail(ChallengeVO vo, Model model) {
		model.addAttribute("chall", challengeService.getChallengeDetail(vo));

	}

	// modify
	@RequestMapping(value = "/updateChallenge.do")
	public String updateChallenge(@ModelAttribute("challenge") ChallengeVO vo) {
		challengeService.updateChallenge(vo);
		return "redirect:challengeModify.do?chal_no=" + vo.getChal_no();
	}
}
