package com.green.dao;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	// id using check
	@Override
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("mybatis ==> idCheck()");
		return mybatis.selectOne("member.idCheck", vo);
	}

	// sign up
	@Override
	public int memberInsert(MemberVO vo) {
		System.out.println("mybatis ==> memberInsert()");
		return mybatis.insert("member.memberInsert", vo);
	}
	
	// login
	@Override
	public MemberVO login(MemberVO vo) {
		System.out.println("mybatis ==> login()");
		return mybatis.selectOne("member.login", vo);
	}

	// member info
	@Override
	public MemberVO memberInfo(MemberVO vo) {
		System.out.println("mybatis ==> memberInfo()");
		return mybatis.selectOne("member.memberInfo", vo);
	}

	// member info edit
	@Override
	public int memberUpdate(MemberVO vo) {
		System.out.println("mybatis ==> memberUpdate()");
		int res = mybatis.update("member.memberUpdate", vo);
		return res;
	}

	// search id
	@Override
	public String searchID(HashMap map) {
		System.out.println("mybatis ==> searhID()");
		return mybatis.selectOne("member.searchID", map);
	}

	// search pw
//	@Override
//	public String searchPass(String email) {
//		System.out.println("mybatis ==> searhID()");
//		return mybatis.selectOne("member.searchPass", email);
//	}
	@Override
	public String emailCheck(String id) {
		System.out.println("mybatis ==> emailCheck()");
		return mybatis.selectOne("member.emailCheck", id);
	}
	
	@Override
	public int searchPW(MemberVO vo) {
		System.out.println("mybatis ==> searchPW()");
		return mybatis.update("member.searchPW", vo);
	}

	// member card insert
	@Override
	public void cardInsert(MemberVO vo) {
		System.out.println("mybatis ==> cardInsert()");
		mybatis.insert("member.cardInsert", vo);
	}

	@Override
	public void cardYes(MemberVO vo) {
		System.out.println("mybatis ==> cardYes()");
		mybatis.update("member.cardYes", vo);
	}
	
	// member bank account insert
	@Override
	public void accountInsert(MemberVO vo) {
		System.out.println("mybatis ==> accountInsert()");
		mybatis.insert("member.accountInsert", vo);
	}
	
	@Override
	public void accountYes(MemberVO vo) {
		System.out.println("mybatis ==> accountYes()");
		mybatis.update("member.accountYes", vo);
	}
	
	// member card delete
	@Override
	public void cardDelete(MemberVO vo) {
		System.out.println("mybatis ==> cardDelete()");
		mybatis.delete("member.cardDelete", vo);
	}
	
	@Override
	public void cardNo(MemberVO vo) {
		System.out.println("mybatis ==> cardNo()");
		mybatis.update("member.cardNo", vo);
	}
	
	// member bank account delete
	@Override
	public void accountDelete(MemberVO vo) {
		System.out.println("mybatis ==> accountDelete()");
		mybatis.delete("member.accountDelete", vo);
	}

	@Override
	public void accountNo(MemberVO vo) {
		System.out.println("mybatis ==> accountNo()");
		mybatis.update("member.accountNo", vo);
	}
	
	@Override
	public void goDona(HashMap<String, Object> map) {
		System.out.println("==>goDona()호출");
		mybatis.update("member.goDona",map);
		
	}

	@Override
	public String dogeonExp(MemberVO vo) {
		System.out.println("==>dogeonExp 호출");
		String lastDate = mybatis.selectOne("member.dogeonExp",vo);
		System.out.println("d"+lastDate);
		return lastDate;
	}

	//select today pay, member
	@Override
	public List<HashMap<String, Object>> todayPay() {
		System.out.println("==> todayPay 호출");
		return mybatis.selectList("member.todayPay");
	}

	@Override
	public int todayMem() {
		System.out.println("==> todayMem 호출");
		return mybatis.selectOne("member.todayMem");
	}
	
	//select week pay, member
	@Override
	public List<HashMap<String, Object>> weekMem() {
		System.out.println("==> weekMem 호출");
		
		List<HashMap<String, Object>> list = mybatis.selectList("member.weekMem");
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat dtFormat = new SimpleDateFormat("yyyy-MM-dd");
		String today = dtFormat.format(cal.getTime());
		
		if(list == null) {
			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("daily_mem", 0);
			map.put("weeks", today);
			list.add(map);
			System.out.println(list);
		}
		return list;
	}

	@Override
	public List<HashMap<String, Object>> weekPay() {
		System.out.println("==> weekPay 호출");
		
		List<HashMap<String, Object>> list = mybatis.selectList("member.weekPay");
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat dtFormat = new SimpleDateFormat("yyyy-MM-dd");
		String today = dtFormat.format(cal.getTime());

		if(list == null) {
			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("pay_count", 0);
			map.put("pay_sum", 0);
			map.put("weeks", today);
			list.add(map);
			System.out.println(list);
		}
		
		return list;
	}

	//select dogeonRate
	@Override
	public List<HashMap<String, Object>> dogeonRate() {
		System.out.println("==> dogeonRate 호출");
		return mybatis.selectList("member.dogeonRate");
	}
}