package com.green.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.green.domain.DonationVO;
import com.green.domain.MemberVO;
import com.green.domain.NewsVO;
import com.green.service.DogamService;
import com.green.service.DonationService;
import com.green.service.MemberService;

@Controller
@RequestMapping("/donation/")
public class DonationController {

	@Autowired
	private DonationService donationService;
	@Autowired
	private DogamService dogamService;

	@Autowired
	private MemberService memberService;

	// 화면만 이동(DB연결은 XX)
	@RequestMapping(value = "{url}.do")

	public String url(@PathVariable String url) {
		System.out.println("기부 요청" + url);
		return "/donation/" + url;
	}

	// 등록
	@RequestMapping(value = "/save.do")
	public String donationInsert(DonationVO vo) throws Exception {
		donationService.insertDona(vo);
		return "redirect:adDonationList.do";
	}

	// 수정
	@RequestMapping(value = "/updateDona.do")
	public String updateDona(@ModelAttribute("dona") DonationVO vo) {
		System.out.println("control" + vo.getDon_name());
		System.out.println("control" + vo.getDon_start_date());
		donationService.updateDona(vo);
		// return "redirect:donationModify.do?don_no="+vo.getDon_no();
		return "redirect:adDonationList.do";
	}

	// 삭제
	@RequestMapping(value = "/deleteDona.do")
	public String deleteDona(DonationVO vo) {
		donationService.deleteDona(vo);
		return "redirect:/donation/adDonationList.do";
	}

	// 리스트 출력
	@RequestMapping(value = { "/donation.do", "/adDonationList.do" })
	public void selectDona(Model model) {
		List<DonationVO> list = null;
		list = donationService.selectDona();
		model.addAttribute("list", list);
	}

	// 기부처 하나만 가져옴
	@RequestMapping(value = { "/donationDetail.do", "/donationModify.do" })
	public void detailDona(DonationVO vo, Model model) {
		model.addAttribute("dona", donationService.getDona(vo));
	}

	// 기부하기 페이지갈때 사용
	@RequestMapping(value = "/goDonation.do")
	public void goDonationPage(MemberVO vo, int don_no, Model model) {
		MemberVO memberVo = memberService.memberInfo(vo);
		model.addAttribute("meminfo", memberVo);
		model.addAttribute("don_no", don_no);
	}

	// 기부할때 작동
	@RequestMapping(value = "/goDona.do")
	public String goDona(String id, Integer don_point, int don_no,Integer do_exp) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("don_point", don_point);
		map.put("id", id);
		map.put("don_no", don_no);
		map.put("do_exp", do_exp);
		
		donationService.goDona(map);
		donationService.memDon(map);
		memberService.goDona(map);
		dogamService.donExp(map);
		
		System.out.println("dldd");
		
		return "redirect:/donation/donation.do";
	}
}
