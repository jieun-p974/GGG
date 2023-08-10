package com.green.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

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

import com.green.domain.MemberVO;
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
		if (result > 0)
			message = vo.getName() + "님, 가입을 축하드립니다!";

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
		// MemberVO user = memberService.login(vo);
		MemberVO memberVo = memberService.memberInfo(vo);
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
			session.setAttribute("userBday", simpleDateFormat.format(memberVo.getBday()).toString());
			session.setAttribute("userSdate", simpleDateFormat.format(memberVo.getSdate()).toString());
			session.setAttribute("userCard", memberVo.getCard_reg_YN());
			session.setAttribute("userAccount", memberVo.getAccount_reg_YN());
			session.setAttribute("userPoint", memberVo.getRemainder_point());
			session.setAttribute("userImg", memberVo.getM_img());
			session.setAttribute("userImgAddr", memberVo.getM_img_addr());
			session.setAttribute("userVo", memberVo);
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
	@RequestMapping("/infoEditSave.do")
	public String userUpdate(@ModelAttribute("member") MemberVO memberVo) {
		memberService.memberUpdate(memberVo);
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

	@RequestMapping("/goDonation.do")
	public String goDona(@ModelAttribute("member") MemberVO vo) {
		memberService.goDona(vo);
		return "/";
	}

	// member card insert
	@RequestMapping("/cardSave.do")
	public String cardInsert(MemberVO vo) throws IOException {
		memberService.cardInsert(vo);
		return "redirect:/member/mypage.do";
	}
	
	// member bank account insert
	@RequestMapping("/accSave.do")
	public String accountInsert(MemberVO vo) throws IOException {
		memberService.accountInsert(vo);
		return "redirect:/member/mypage.do";
	}
}