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
import com.green.service.DonationService;
import com.green.service.MemberService;

@Controller
@RequestMapping("/donation/")
public class DonationController {

	@Autowired
	private DonationService donationService;
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
	
	//수정
	@RequestMapping(value="/updateDona.do")
	public String updateDona(@ModelAttribute("dona") DonationVO vo) {
		System.out.println("control"+vo.getDon_name());
		System.out.println("control"+vo.getDon_start_date());
		donationService.updateDona(vo);
		//return "redirect:donationModify.do?don_no="+vo.getDon_no();
		return "redirect:adDonationList.do";
	}
		
	//삭제
	@RequestMapping(value="/deleteDona.do")
	public String deleteDona(DonationVO vo) {
		donationService.deleteDona(vo);
		return "redirect:/donation/adDonationList.do";
	}
	
	// 리스트 출력
	@RequestMapping(value = {"/donation.do","/adDonationList.do"})
	public void selectDona(Model model) {
		List<DonationVO> list = null;
		list = donationService.selectDona();
		model.addAttribute("list", list);
	}
	
	//기부처 하나만 가져옴
	@RequestMapping(value={"/donationDetail.do","/donationModify.do"})
	public void detailDona(DonationVO vo,Model model) {
		model.addAttribute("dona", donationService.getDona(vo));
	}

	//기부하기 페이지갈때 사용
	@RequestMapping(value="/goDonation.do")
	public void goDonationPage(MemberVO vo,int don_no, Model model) {
		MemberVO memberVo = memberService.memberInfo(vo);
		model.addAttribute("meminfo", memberVo);
		model.addAttribute("don_no", don_no);
	}

	//기부할때 작동
	@RequestMapping(value="/goDona.do", produces = "application/text; charset=utf8")
	// 화면에서 보낸 결과 한글 깨짐 해결 -> produces = "application/text; charset=utf8"
	@ResponseBody // --> 이것으로 비동기화 통신을을 함 ( 페이지전환되지 않도록)
	public void goDona(String id, Integer don_point,int don_no, Model model) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("don_point", don_point);
		map.put("id", id);
		map.put("don_no", don_no);
		System.out.println(map);
		donationService.goDona(map);
		donationService.memDon(map);
		memberService.goDona(map);
		
	}

}

