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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	@RequestMapping(value="/goDonation.do")
	public void goDonationPage(MemberVO vo, int don_no, Model model) {
		MemberVO memberVo = memberService.memberInfo(vo);
		
		model.addAttribute("meminfo", memberVo);
		model.addAttribute("don_no", don_no);
	}
	
	//기부 하러가기 전에 대표 캐릭터 있는지 체크
	@RequestMapping(value = "/goDonation2.do")
	public String beforGoDonationPage(MemberVO vo, int don_no, Model model, RedirectAttributes rd) throws IOException{
		int rs = donationService.countChoice(vo.getId());
		if(rs > 0) {
			
			return "redirect:/donation/goDonation.do?id="+vo.getId()+"&don_no="+don_no;
		}else {
			rd.addFlashAttribute("msg","기부하기 전에 대표캐릭터 먼저 선택해주세요!");
			rd.addFlashAttribute("url","/dogam/dogam.do");
			
			return "redirect:/donation/donationDetail.do?don_no="+don_no;
		}
	}

	// 기부할때 작동
	@RequestMapping(value = "/goDona.do")
	public String goDona(String id, Integer don_point, int don_no,Integer do_exp ,RedirectAttributes rd) throws IOException {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("don_point", don_point);
		map.put("id", id);
		map.put("don_no", don_no);
		map.put("do_exp", do_exp);

		// 조건 추가(don_point가 남은 경험치보다 같거나 작아야함)
		int rs = donationService.remainExp(id);
		
		if(rs >= don_point) {
			donationService.goDona(map);
			donationService.memDon(map);
			memberService.goDona(map);
			dogamService.donExp(map);
			
			return "redirect:/donation/donation.do";
		}else {
			rd.addFlashAttribute("msg","현재 대표캐릭터의 최종 성장까지 남은 포인트 보다 기부하려는 포인트가 더 많습니다.");
			rd.addFlashAttribute("url","/donation/donationDetail.do?don_no="+don_no);
			
			return "redirect:/donation/goDonation.do?id="+id+"&don_no="+don_no;
		}
	}
}