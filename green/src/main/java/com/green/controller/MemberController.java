package com.green.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.green.domain.ChallengeVO;
import com.green.domain.MemberVO;
import com.green.service.ChallengeService;
import com.green.service.DogamService;
import com.green.service.DonationService;
import com.green.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {

	@RequestMapping(value = "{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("memberController 요청 -----> " + url);
		return "/member/" + url;
	}

	@Autowired
	private MemberService memberService;
	@Autowired
	private ChallengeService challengeService;
	@Autowired
	private DonationService donationService;
	@Autowired
	private DogamService dogamService;

	// id using check
	@RequestMapping(value = "/idCheck.do", produces = "application/text; charset=utf8")
	@ResponseBody
	public String idcheck(MemberVO vo) {
		MemberVO memberVo = memberService.idCheck_Login(vo);
		String result = "ID 사용 가능합니다.";

		if (memberVo != null)
			result = "중복된 아이디 입니다.";
		return result;
	}

	// sign up
	@RequestMapping("/signupSave.do")
	public ModelAndView userInsert(MemberVO vo) {

		int result = memberService.memberInsert(vo);

		String message = "가입되지 않았습니다";
		if (result > 0) {
			message = vo.getId() + "님, 가입을 축하드립니다!";
		}

		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/login");
		mv.addObject("message", message);
		mv.addObject("result", result);
		return mv;
	}

	// login
	@RequestMapping("/loginSave.do")
	public String login(MemberVO vo, HttpSession session) {
		MemberVO result = memberService.idCheck_Login(vo);
		MemberVO memberVo = memberService.memberInfo(vo);
		String lastDate = memberService.dogeonExp(vo);

		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

		if (result == null || result.getId() == null) {
			return "/member/login";
		} else {
			System.out.println("[" + result.getId() + "] 로그인 접속 ");
			session.setMaxInactiveInterval(60 * 60); // 세션유지시간 60분
			session.setAttribute("sessionTime", new Date().toLocaleString());
			session.setAttribute("userId", memberVo.getId());
			session.setAttribute("userType", memberVo.getMem_type_no());
			session.setAttribute("userPass", memberVo.getPassword());
			session.setAttribute("userName", memberVo.getName());
			session.setAttribute("userTel", memberVo.getTel());
			session.setAttribute("userEmail", memberVo.getEmail());
			session.setAttribute("userSdate", simpleDateFormat.format(memberVo.getSdate()).toString());
			session.setAttribute("userCard", memberVo.getCard_reg_YN());
			session.setAttribute("userAccount", memberVo.getAccount_reg_YN());
			session.setAttribute("userPoint", memberVo.getRemainder_point());
			session.setAttribute("userImg", memberVo.getM_img());
			session.setAttribute("userImgAddr", memberVo.getM_img_addr());
			session.setAttribute("userTryNum", memberVo.getTryNum());
			session.setAttribute("userVo", memberVo);
			session.setAttribute("dogeonGigan", lastDate);
			System.out.println("c" + lastDate);
		}
		return "redirect:/member/main.do";
	}

	// logout
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/member/main.do";
	}

	// member info edit
	@RequestMapping("/editSave.do")
	public String userUpdate(MemberVO vo) throws IOException {
		System.out.println("c" + vo.getId());
		int res = memberService.memberUpdate(vo);
		System.out.println("ccc" + res);
		return "redirect:/member/mypage.do";
	}

	// search id
	@RequestMapping(value = "/searchIDsave.do")
	public String searchID() throws Exception {
		return "/member/searchID";
	}

	@RequestMapping(value = "/searchIDsave.do", method = RequestMethod.POST)
	public String searchID(HttpServletResponse response, @RequestParam("email") String email, Model md)
			throws Exception {
		md.addAttribute("id", memberService.searchID(response, email));
		return "/member/searchID";
	}

	// search pw
	@RequestMapping(value = "/searchPassSave.do")
	public String searchPass() throws Exception {
		return "/member/searchPass";
	}

	@RequestMapping(value = "/searchPassSave.do", method = RequestMethod.POST)
	public String searchPass(HttpServletResponse response, @RequestParam("email") String email, Model md)
			throws Exception {
		md.addAttribute("pw", memberService.searchPass(response, email));
		return "/member/searchPass";
	}

	// member card insert
	@RequestMapping("/cardSave.do")
	public String cardInsert(MemberVO vo) throws IOException {
		memberService.cardInsert(vo);
		memberService.cardYes(vo);
		return "redirect:/member/mypage.do";
	}

	// member bank account insert
	@RequestMapping("/accSave.do")
	public String accountInsert(MemberVO vo) throws IOException {
		memberService.accountInsert(vo);
		memberService.accountYes(vo);
		return "redirect:/member/mypage.do";
	}

	// 마이페이지에서 나의 도감, 진행중인 챌린지, 기부내역 띄우기
	@RequestMapping(value = "/mypage.do")
	public void challAndDona(String id, Model model) {

		try {
			int do_no = dogamService.myYes(id);
			System.out.println("dd" + do_no);
			if (do_no > 0) {
				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("id", id);
				map.put("do_no", do_no);

				System.out.println(map);

				HashMap<String, Object> myDogam = dogamService.getDetail(map);
				List<ChallengeVO> challList = challengeService.getMyChallengeList(id);
				List<HashMap<String, Object>> myDonaList = donationService.myDonaList(id);

				model.addAttribute("myDogam", myDogam);
				model.addAttribute("challList", challList);
				model.addAttribute("myDonaList", myDonaList);
				model.addAttribute("check", do_no);
			} else {
				List<ChallengeVO> challList = challengeService.getMyChallengeList(id);
				List<HashMap<String, Object>> myDonaList = donationService.myDonaList(id);
				model.addAttribute("challList", challList);
				model.addAttribute("myDonaList", myDonaList);
				model.addAttribute("check", do_no);
			}
		} catch (Exception e) {
		}

	}

	// amdinMain에 오늘 결제 건수, 금액, 가입인원수 출력
	@RequestMapping(value = "/adminMain.do")
	public void todayPayAndMem(Model model) {
		// 오늘 집계
		List<HashMap<String, Object>> todayPay = memberService.todayPay();
		int todayMem = memberService.todayMem();
		
		// 인증 목록 최근 5개
		List<HashMap<String, Object>> memChal = challengeService.newCert();

		String nonePay = "";
		String noneMem = "";

		for (HashMap<String, Object> d : todayPay) {
			int payCount = Integer.parseInt(String.valueOf(d.get("pay_count")));
			int paySum = Integer.parseInt(String.valueOf(d.get("pay_sum")));

			if (payCount < 1) {
				nonePay = "오늘 결제한 회원이 없습니다.";
				model.addAttribute("nonePay", nonePay);
			} else {
				model.addAttribute("payCount", payCount);
				model.addAttribute("paySum", paySum);
			}
		}

		if (todayMem > 0) {
			model.addAttribute("todayMem", todayMem);
		} else {
			noneMem = "오늘 가입한 회원이 없습니다.";
			model.addAttribute("noneMem", noneMem);
		}
		
		model.addAttribute("memChal",memChal);
	}

	@RequestMapping(value = "/chartsData.do")
	public @ResponseBody List weekPayAndMem(Model model) {
		// 일주일 날짜 구하기
		List<String> weekList = new ArrayList();
		for (int i = 0; i < 7; i++) {
			Calendar cal = Calendar.getInstance();
			SimpleDateFormat dtFormat = new SimpleDateFormat("yyyy-MM-dd");
			String today = dtFormat.format(cal.getTime());
			cal.add(cal.DATE, -6);
			cal.add(Calendar.DATE, i);
			weekList.add(dtFormat.format(cal.getTime()));
		}

		// 일주일간 집계
		List<HashMap<String, Object>> weekMemCount = memberService.weekMem();
		List<HashMap<String, Object>> weekPayCount = memberService.weekPay();
		List<HashMap<String, Object>> dogeonRate = memberService.dogeonRate();
		
		String noneWeekMem = "";
		String noneWeekPay = "";
		List<HashMap<String, Object>> ajaxList = new ArrayList();

		if (weekMemCount.size() < 1) {
			noneWeekMem = "일주일간 가입한 회원이 없습니다.";
			model.addAttribute("noneWeekMem", noneWeekMem);
		} else {
			for (String d : weekList) {
				HashMap ajaxMap = new HashMap<String, Object>();
				ajaxMap.put("daily_mem", 0);
				ajaxMap.put("pay_count", 0);
				ajaxMap.put("pay_sum", 0);
				ajaxMap.put("weeks", d);
				ajaxList.add(ajaxMap);
			}
			for (HashMap w : weekMemCount) {
				for (HashMap a : ajaxList) {
					if (w.get("weeks").equals(a.get("weeks"))) {
						a.put("daily_mem", w.get("daily_mem"));
					}
				}
			}
		}

		if (weekPayCount.size() < 1) {
			noneWeekPay = "일주일간 결제한 회원이 없습니다.";
			model.addAttribute("noneWeekPay", noneWeekPay);
		} else {
			for (HashMap p : weekPayCount) {
				for (HashMap a : ajaxList) {
					if (p.get("weeks").equals(a.get("weeks"))) {
						a.put("pay_count", p.get("pay_count"));
						a.put("pay_sum", p.get("pay_sum"));
					}
				}
			}
		}

		for(HashMap d : dogeonRate) {
			for(HashMap a:ajaxList) {
				a.put("t_cnt", d.get("t_cnt"));
				a.put("s_cnt", d.get("s_cnt"));
				a.put("i_cnt", d.get("i_cnt"));
			}
		}
		
		model.addAttribute("weekMemCount", ajaxList);

		return ajaxList;
	}
}