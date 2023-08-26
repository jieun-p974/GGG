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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.green.domain.DogamVO;
import com.green.service.DogamService;

@Controller
@RequestMapping("/dogam/")
public class DogamController {

	@Autowired
	private DogamService dogamService;

	@RequestMapping(value = "{url}.do")
	public String url(@PathVariable String url) {
		return "/dogam/" + url;
	}

	// get admin list
	@RequestMapping(value = "/dogamCheck.do")
	public void getAdminDogam(Model model) {
		List<DogamVO> list = null;
		list = dogamService.getAdminDogam();
		model.addAttribute("list", list);
	}

	// get admin list with img
	@RequestMapping(value = { "/dogamCheckImg.do", "/dogamDetail.do" })
	public void getAdminImgDogam(Model model, int do_no) {
		List<DogamVO> list = null;
		list = dogamService.getAdminImgDogam(do_no);
		model.addAttribute("list", list);
	}

	// get dogam list
	@RequestMapping(value = { "/dogam.do" })
	public void getDogamList(Model model) {
		List<DogamVO> list = null;
		list = dogamService.getDogamList();
		model.addAttribute("list", list);
	}

	// get dogam detail
	@RequestMapping(value = { "/dogamModify.do",  "/dogamImg.do" })
	public void getDogam(DogamVO vo, Model model) {
		model.addAttribute("dogam", dogamService.getDogam(vo));
	}

	// get my dogam
	@RequestMapping(value = {"/myDogam.do", "/myDogamDetail.do"})
	public void getMyDogamList(String id, DogamVO vo, Model model) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		HashMap<String, Object> map2 = new HashMap<String, Object>();
		int res = 1;
		dogamService.mainCancle3(id);
		if (id != null) {
			map.put("id", id);
			map2.put("id",id);
			map2.put("do_no", vo.getDo_no());
		}
		
		List<HashMap<String,Object>> list =dogamService.getMyDogamList(map);
		HashMap<String, Object> dList = dogamService.getDetail(map2);
		if(list.size() < 1) {
			res = 2;
			System.out.println("ccc" + res);
		}
		model.addAttribute("mydogam", list);
		model.addAttribute("detail", dList);
		model.addAttribute("res", res);
		model.addAttribute("count",list.size());
	}
	
	// insert
	@RequestMapping(value = "/saveDogam.do")
	public String dogamInsert(DogamVO vo) throws IOException {
		dogamService.dogamInsert(vo);
		return "redirect:/dogam/dogamCheck.do";
	}

	// img insert
	@RequestMapping(value = "/saveImgDogam.do")
	public String dogamImgInsert(DogamVO vo) throws IOException {
		dogamService.dogamImgInsert(vo);
		return "redirect:/dogam/dogamCheck.do";
	}

	// update
	@RequestMapping(value = "/modifyDogam.do")
	public String dogamUpdate(@ModelAttribute("dogam") DogamVO vo) {
		dogamService.dogamUpdate(vo);
		return "redirect:/dogam/dogamCheck.do";
	}

	// delete
	@RequestMapping(value = "/deleteDogam.do")
	public String dogamDelete(DogamVO vo) {
		dogamService.dogamDelete(vo);
		return "redirect:/dogam/dogamCheck.do";
	}

	// sinchung
	@RequestMapping(value = "/sinchung.do")
	public String dogamSinchung(String do_no, String userId, RedirectAttributes rd) throws IOException {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("do_no", do_no);
		map.put("userId", userId);
		int result = dogamService.dogamSinchung(map);
		
		if (result > 0) {
			rd.addFlashAttribute("msg", "키우기 신청이 완료되었습니다.");
			rd.addFlashAttribute("url", "/dogam/myDogam.do?id=" + userId);
			return "redirect:/dogam/dogamDetail.do?do_no=" + do_no;
		}
		
		rd.addFlashAttribute("msg", "이미 키우고 있는 캐릭터입니다.");
		rd.addFlashAttribute("url", "/dogam/dogam.do");
		return "redirect:/dogam/dogamDetail.do?do_no=" + do_no;
	}
	
	// main animal choice
	@RequestMapping(value = "/mainChoice.do")
	public String mainChoice(int do_no, String userId, RedirectAttributes rd) throws IOException {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("do_no", do_no);
		map.put("userId", userId);
		int result = dogamService.mainChoice(map);
		
		if (result > 0) {
			rd.addFlashAttribute("msg", "대표 캐릭터가 설정되었습니다.");
			rd.addFlashAttribute("url", "/dogam/myDogam.do?id=" + userId);
			return "redirect:/dogam/dogamDetail.do?do_no=" + do_no;
		}
		
		rd.addFlashAttribute("msg", "이미 설정된 대표 캐릭터가 있습니다.");
		rd.addFlashAttribute("url", "/dogam/myDogam.do?id=" + userId);
		return "redirect:/dogam/dogamDetail.do?do_no=" + do_no;
	}
	
	// main animal cancle 
		@RequestMapping(value = "/mainCancle.do")
		public String mainCancle(int do_no, String userId, RedirectAttributes rd) throws IOException {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("do_no", do_no);
			map.put("userId", userId);
			int result = dogamService.mainCancle(map);
			
			if (result > 0) {
				rd.addFlashAttribute("msg", "대표 캐릭터 설정이 해제되었습니다.");
				rd.addFlashAttribute("url", "/dogam/myDogam.do?id=" + userId);
				return "redirect:/dogam/myDogam.do?id=" + userId;
			}
		
		rd.addFlashAttribute("msg", "이미 설정된 대표 캐릭터가 있습니다.");
		rd.addFlashAttribute("url", "/dogam/myDogam.do?id=" + userId);
		return "redirect:/dogam/myDogam.do?id=" + userId;
	
		}

	// name update
		@RequestMapping(value = "/givename.do")
		public String updateDoname(String do_name,int do_no, String id, RedirectAttributes rd) throws IOException {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("do_no", do_no);
			map.put("userId", id);
			map.put("do_name", do_name);
			System.out.println("c"+map);
			int result = dogamService.updateDoname(map);
			
			if (result > 0) {
				rd.addFlashAttribute("msg", "소중한 이름을 지어주셔서 감사합니다.");
				rd.addFlashAttribute("url", "/dogam/myDogam.do?id=" + id);
			}
			return "redirect:/dogam/dogamDetail.do?do_no=" + do_no;
						
		}
		
	
	// insert goods
		@RequestMapping(value = "/goodsSinchung.do")
		public String insertGoods(int do_no, String id, RedirectAttributes rd) throws IOException {
						
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("do_no", do_no);
			map.put("userId", id);
			
			int cnt = dogamService.searchGoods(map);
			System.out.println("cnt몇개임 알려줏메메ㅔㅔㅔㅔㅔ" + cnt);
			//굿즈 있는 지 찾아와서 검색하고 그 결과 따라서 insert
			if(cnt<1) {
				dogamService.insertGoods(map);
				rd.addFlashAttribute("msg", "굿즈 신청되었습니다.");
				rd.addFlashAttribute("url", "/dogam/myDogam.do?id=" + id);
			}
			if(cnt>=1) {
				rd.addFlashAttribute("msg", "이미 신청하셨습니다.");
				rd.addFlashAttribute("url", "/dogam/myDogam.do?id=" + id);
			}
			return "redirect:/dogam/myDogam.do?id=" + id;
		}			
}