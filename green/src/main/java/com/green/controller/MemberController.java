package com.green.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.green.domain.MemberVO;
import com.green.service.MemberService;

@Controller
@RequestMapping("/member/") // 이 컨트롤러는 user 폴더 밑에서 가져옴
public class MemberController {

   @RequestMapping(value="{url}.do")
   public String url(@PathVariable String url) {
      System.out.println("memberController 요청 -----> " +url);
      return "/member/"+url;
   }	
   
	 @Autowired
	   private MemberService memberService; 
	 
  // 회원가입  
   @RequestMapping("/save.do")
   public ModelAndView userInsert(MemberVO vo) {
	   int result = memberService.memberInsert(vo);
	   
	   String message="가입되지 않았습니다";
	   if(result > 0) message = vo.getName() +"님, 가입을 축하드립니다!";
	   
	   ModelAndView mv = new ModelAndView();
	   mv.setViewName("member/login");
	   mv.addObject("message", message);
	   mv.addObject("result", result);
	   return mv;
   }
  

   
   // 로그인 
	@RequestMapping("/save2.do") // 가라페이지로 이동
	public String login(MemberVO vo, HttpSession session) { 
		// DB연결 확인
		MemberVO result = memberService.idCheck_Login(vo);
		MemberVO memberVo = memberService.memberInfo(vo);

		if (result == null || result.getId() == null) {
			return "/member/login"; 		} else {
			System.out.println("[" + result.getId() + "] 로그인 접속 ");
			// 세션에 저장
			session.setAttribute("sessionTime", new Date().toLocaleString());
			session.setMaxInactiveInterval(60*5); //세션유지시간 5분
			session.setAttribute("userId", memberVo.getId());
			session.setAttribute("userType", memberVo.getMem_type_no());
			session.setAttribute("userPass", memberVo.getPassword());
			session.setAttribute("userName", result.getName());
			session.setAttribute("userTel", memberVo.getTel());
			session.setAttribute("userEmail", memberVo.getEmail());
			session.setAttribute("userSdate", memberVo.getSdate());
			session.setAttribute("userCard", memberVo.getCard_reg_YN());
			session.setAttribute("userAccount", memberVo.getAccount_reg_YN());
			session.setAttribute("userPoint", memberVo.getRemainder_point());
			session.setAttribute("userImg", memberVo.getM_img());
			
			session.setAttribute("userVo", memberVo);
		}

		// 
		return "redirect:/member/mypage.do";
	}
	
	// 아이디 중복 체크
	@RequestMapping(value = "/save3.do", produces = "application/text; charset=utf8")
	@ResponseBody // 비동기 통신
	public String idchekc(MemberVO vo) // 인자로 사용자아이디(String)만 받아도 된다
	{
		MemberVO memberVo = memberService.idCheck_Login(vo);
		String result = "ID 사용 가능합니다.";
		if (memberVo != null)
			result = "중복된 아이디 입니다.";
		return result;
	}

	// 회원정보 수정
	@RequestMapping("/save4.do")
	public ModelAndView userUpdate(MemberVO memberVo) {
		int result = memberService.memberUpdate(memberVo);
		String message = "변경되지 않았습니다";
		if (result > 0)
			message = memberVo.getId() + "님, 회원정보가 변경되었습니다.";
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member");
		mv.addObject("message", message);
		mv.addObject("result", result);
		return mv;
	}
	
	// 로그아웃
	@RequestMapping("/save5.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/member/main.do";

	}
	

}