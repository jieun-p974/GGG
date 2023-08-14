package com.green.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.green.domain.ChallengeCheckVO;
import com.green.domain.ChallengeVO;
import com.green.domain.MemChallengeVO;
import com.green.service.ChallengeService;

@Controller
@RequestMapping("/challenge/")
public class ChallengeController {
	@Autowired
	private ChallengeService challengeService;

	// 화면만 이동(DB연결은 XX)
	@RequestMapping(value = "{url}.do")
	public String url(@PathVariable String url) {
		return "/challenge/" + url;
	}

	// insert
	@RequestMapping(value = "/saveChallenge.do")
	public String challengeInsert(ChallengeVO vo) throws IOException {
		challengeService.insertChallenge(vo);
		return "redirect:adminChallenge.do";
	}

	// challenge sinchung
	@RequestMapping(value = "/sinchung.do")
	public String challenegeSinchung(String chal_no, String userId, RedirectAttributes rd) throws IOException {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("chal_no", chal_no);
		map.put("userId", userId);
		int result = challengeService.challengeSinchung(map);

		if (result > 0) {
			rd.addFlashAttribute("msg", "신청이 완료되었습니다.");
			rd.addFlashAttribute("url", "/challenge/myChallenge.do?userId=" + userId);

			return "redirect:/challenge/challengeDetail.do?chal_no=" + chal_no;
		}
		rd.addFlashAttribute("msg", "이미 신청한 챌린지 입니다.");
		rd.addFlashAttribute("url", "/challenge/challengeList.do");

		return "redirect:/challenge/challengeDetail.do?chal_no=" + chal_no;
	}

	// get challenge list - user or admin
	@RequestMapping(value = { "challengeList.do", "/adminChallenge.do" })
	public void getChallengeList(Model model) {
		List<ChallengeVO> list = null;
		list = challengeService.getChallengeList();
		model.addAttribute("list", list);
	}

	// get one
	@RequestMapping(value = { "/challengeModify.do", "/challengeDetail.do" })
	public void getChallengeDetail(ChallengeVO vo, Model model) {
		model.addAttribute("chall", challengeService.getChallengeDetail(vo));
	}

	// modify
	@RequestMapping(value = "/updateChallenge.do")
	public String updateChallenge(@ModelAttribute("challenge") ChallengeVO vo) {
		challengeService.updateChallenge(vo);
		return "redirect:challengeModify.do?chal_no=" + vo.getChal_no();
	}

	// my challenge
	@RequestMapping(value = "/myChallenge.do")
	public void getMyChallenge(Model model, String userId) {

		List<ChallengeVO> list = null;
		list = challengeService.getMyChallengeList(userId);
		List<ChallengeVO> comList = null;
		comList = challengeService.getCompleteList(userId);
		model.addAttribute("myChall", list);
		model.addAttribute("complete", comList);
	}

	// get one for certification
	@RequestMapping(value = "/checkChallenge.do")
	public void getChalDetailForCertification(String id, ChallengeVO vo, Model model) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		if(id!=null) {
			param.put("id",id);
			param.put("chal_no",vo.getChal_no());
		}
		model.addAttribute("chall", challengeService.getChallengeDetail(vo));
		model.addAttribute("check", challengeService.getChallengeCheck(param));
		model.addAttribute("counting", challengeService.countCheck(param));
	}
	// 인증 페이지에 인증 정보 불러오기
	/*
	 * @RequestMapping(value="/challengeCertification.do") public void
	 * goCertiPage(int m_c_no, Model model) {
	 * 
	 * }
	 */
	
	//certification table insert
	@RequestMapping(value="/goCertification.do")
	public String insertCertification(ChallengeCheckVO vo) throws IOException {
		System.out.println(vo.getCer_img1_addr());
		challengeService.insertCertification(vo);
		MemChallengeVO reVo = challengeService.redirectCheckPage(vo);
		return "redirect:/challenge/checkChallenge.do?chal_no="+reVo.getChal_no()+"&id="+reVo.getId();
	}
	
	//관리자 인증 체크 리스트
	@RequestMapping(value="/adminChallengeCertList")
	public void adminCerCheckList(Model model,String chal_name) {
		List<ChallengeCheckVO> list = challengeService.adminCerCheckList();
		model.addAttribute("cerList", list);
		model.addAttribute("chal_name", chal_name);
	}
	
	//체크한것만 전달하기
	@RequestMapping(value="/yesChecked.do")
	public String yesCheckedList(@RequestParam List<String> valueArr) {
		HashMap<String, List<String>> arr = new HashMap<String, List<String>>();
		arr.put("arr", valueArr);
		challengeService.updatePassYN(arr);
		return "redirect:/challenge/adminChallengeCertList.do";
	}
}
