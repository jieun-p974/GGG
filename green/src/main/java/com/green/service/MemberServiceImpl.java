package com.green.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
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
		int res = memberDAO.memberUpdate(vo);
		return res;
	}

	// search id
	@Override
	public String searchID(HttpServletResponse response, HashMap map) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = memberDAO.searchID(map);

		if (id == null) {
			out.println("<script>");
			out.println("alert('일치하는 정보가 없습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return null;
		} else {
			out.println("<script>");
			out.println("var id = '" + id + "';");
			out.print("alert(id + ' 으로 가입되어 있습니다.');");
			out.print("location.href = 'login.do';");
			out.println("</script>");
			out.close();
			return id;
		}
	}

	
	// search pw
	@Override
	public String emailCheck(String id) {
		return memberDAO.emailCheck(id);
	}
	
	@Override
	public void sendEmail(MemberVO vo, String div) {
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.gmail.com"; 
		String hostSMTPid = "letgoggg.0731@gmail.com";
		String hostSMTPpwd = "dolauwmpcdaghtfe";

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "letgoggg.0731@gmail.com";
		String fromName = "GGG";
		String subject = "";
		String msg = "";

		if(div.equals("searchPW")) {
			subject = "[GGG] 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid silver; '>";
			msg += "<h3 style='color: green;'>";
			msg += vo.getId() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += vo.getPassword() + "</p></div>"; 
		}
		
		// 받는 사람 E-Mail 주소
		String mail = vo.getEmail();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(465); 

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
		
	}
	@Override
	public void searchPW(HttpServletResponse response, MemberVO vo) throws Exception  {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		// 가입된 아이디가 없으면
		if(memberDAO.idCheck(vo) == null) {
			out.print("등록되지 않은 아이디입니다.");
			out.close();
		}
		// 가입된 이메일이 아니면
		else if(memberDAO.emailCheck(vo.getId()) == null) {
			out.print("등록되지 않은 이메일입니다.");
			out.close();
		}else {
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			vo.setPassword(pw);
			// 비밀번호 변경
			memberDAO.searchPW(vo);
			// 비밀번호 변경 메일 발송
			sendEmail(vo, "searchPW");

			out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			out.close();
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

	@Override
	public void cardNo(MemberVO vo) {
		memberDAO.cardNo(vo);
	}

	// member bank account delete
	@Override
	public void accountDelete(MemberVO vo) {
		memberDAO.accountDelete(vo);
	}
	
	@Override
	public void accountNo(MemberVO vo) {
		memberDAO.accountNo(vo);
	}

	
	// select member dogeon last date
	@Override
	public String dogeonExp(MemberVO vo) {
		return memberDAO.dogeonExp(vo);
	}





	}
