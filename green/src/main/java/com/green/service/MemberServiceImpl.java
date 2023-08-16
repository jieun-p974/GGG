package com.green.service;

import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.MemberDAO;
import com.green.domain.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;

	// id using check
	public MemberVO idCheck_Login(MemberVO vo) {
		return memberDAO.idCheck(vo);
	}

	// sign up
	public int memberInsert(MemberVO vo) {
		return memberDAO.memberInsert(vo);
	}

	// login
	@Override
	public MemberVO login(MemberVO vo) {
		return memberDAO.login(vo);
	}

	// member info
	public MemberVO memberInfo(MemberVO vo) {
		return memberDAO.memberInfo(vo);
	}

	// member info edit
	@Override
	public int memberUpdate(MemberVO vo) {
		return memberDAO.memberUpdate(vo);
	}

	// search id
	@Override
	public String searchID(HttpServletResponse response, String email) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = memberDAO.searchID(email);

		if (id == null) {
			out.println("<script>");
			out.println("alert('가입된 아이디가 없습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return null;
		} else {
			out.println("<script>");
			out.println("var id = '" + id + "';");
			out.print("alert(id + ' 으로 가입되어 있습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return id;
		}
	}

	// search pw
	@Override
	public String searchPass(HttpServletResponse response, String email) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String pw = memberDAO.searchPass(email);

		if (pw == null) {
			out.println("<script>");
			out.println("alert('입력한 정보가 일치하지 않습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return null;
		} else {
			out.println("<script>");
			out.println("var pw = '" + pw + "';");
			out.print("alert('비밀번호는 ' + pw + '입니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return pw;
		}
	}

	@Override
	public void goDona(HashMap<String, Object> map) {
		 memberDAO.goDona(map);
		
	}

	// member card insert
	@Override
	public void cardInsert(MemberVO vo) {
		memberDAO.cardInsert(vo);
	}
	
	@Override
	public void cardYes(MemberVO vo) {
		memberDAO.cardYes(vo);
		
	}

	// member bank account insert
	@Override
	public void accountInsert(MemberVO vo) {
		memberDAO.accountInsert(vo);
	}
	
	@Override
	public void accountYes(MemberVO vo) {
		memberDAO.accountYes(vo);
	}
	
	// member card delete
	@Override
	public void cardDelete(MemberVO vo) {
		memberDAO.cardDelete(vo); 
	}

	// member bank account delete
	@Override
	public void accountDelete(MemberVO vo) {
		memberDAO.accountDelete(vo);
	}



	
}