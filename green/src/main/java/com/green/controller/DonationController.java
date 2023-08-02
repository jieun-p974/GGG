package com.green.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.domain.DonationVO;
import com.green.service.DonationService;

@Controller
@RequestMapping("/donation/")
public class DonationController {

	@Autowired
	private DonationService donationService;
	// 화면만 이동(DB연결은 XX)
	@RequestMapping(value = "{url}.do")

	public String url(@PathVariable String url) {
		System.out.println("기부 요청" + url);
		return "/donation/" + url;
	}

	// 등록
//	@RequestMapping(value = "/save.do")
//	public String DonationInsert(DonationVO vo) throws Exception {
//		donationService.insertDona(vo);
//		return "redirect:/donationDetail.do";
//	}

	// 리스트 출력
	@RequestMapping(value = "/donation.do")
	public void selectDona(Model model) {
		List<DonationVO> list = null;
		list = donationService.selectDona();
		model.addAttribute("list", list);
	}
	
	//기부처 상세 페이지
	@RequestMapping("/donationDetail.do")
	public void detailDona(DonationVO vo,Model model) {
		model.addAttribute("dona", donationService.getDona(vo));
	}
	
	//디데이 뽑으려고

	List<DonationVO>donationList=donationService.selectDona();
	Map<DonationVO,Integer> dDayMap = new HashMap<DonationVO,Integer>();

}

