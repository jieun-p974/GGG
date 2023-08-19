package com.green.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.ChallengeCheckVO;
import com.green.domain.ChallengeVO;
import com.green.domain.MemChallengeVO;

@Repository("challengeDAO")
public class ChallengeDAOImpl implements ChallengeDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void challengeWrite(ChallengeVO vo) {
		System.out.println("Mybatis => chall insert");
		mybatis.insert("ChallengeDAO.challengeWrite",vo);
	}
	
	@Override
	public int challengeSinchung(HashMap map) {
		System.out.println("Mybatis => chall sinchung And minusTryNum");
		int rst= mybatis.insert("ChallengeDAO.challengeSinchung", map);
		mybatis.update("ChallengeDAO.minusTryNum",map);
		return rst;
	}

	@Override
	public List<ChallengeVO> getChallengeList() {
		System.out.println("Mybatis => chall list");
		return mybatis.selectList("ChallengeDAO.getChallengeList");
	}

	@Override
	public ChallengeVO getChallengeDetail(ChallengeVO vo) {
		System.out.println("Mybatis=> chall detail");
		return mybatis.selectOne("ChallengeDAO.getChallengeDetail", vo);
	}
	
	@Override
	public void updateChallenge(ChallengeVO vo) {
		System.out.println("Mybatis=> chall modi");
		mybatis.update("ChallengeDAO.updateChallenge",vo);
	}

	public void deleteChall(int chal_no) {
		System.out.println("Mybatis=> chall delete");
		mybatis.update("ChallengeDAO.deleteChallenge",chal_no);
	}
	
	@Override
	public List<ChallengeVO> getMyChallengeList(String userId) {
		System.out.println("Mybatis => my challenge list");
		return mybatis.selectList("ChallengeDAO.myChallList",userId);
	}

	@Override
	public List<ChallengeVO> getCompleteList(String userId) {
		System.out.println("Mybatis => my complete list");
		return mybatis.selectList("ChallengeDAO.completeList",userId);
	}
	
	@Override
	public List<HashMap<String, Object>> getCheck(HashMap param) {
		System.out.println("Mybatis => my challenge check list");
		List<HashMap<String, Object>> list = mybatis.selectList("ChallengeDAO.getmcNo",param);
		return list;
	}

	@Override
	public Integer countCheck(HashMap param) {
		System.out.println("Mybatis => check");
		Integer res = mybatis.selectOne("ChallengeDAO.countCheck",param);
		if(res == null) {
			res= 0;
		}
		return res;
	}

	@Override
	public void insertCertification(ChallengeCheckVO vo) {
		System.out.println("Mybatis => insert certification");
		mybatis.insert("ChallengeDAO.insertCertification",vo);
	}

	@Override
	public MemChallengeVO redirectCheckPage(ChallengeCheckVO vo) {
		System.out.println("Mybatis => redirect 정보");
		return mybatis.selectOne("ChallengeDAO.redirectCheckPage", vo);
	}

	//관리자 인증체크 리스트 출력
	@Override
	public List<ChallengeCheckVO> adminCerCheckList(int chal_no) {
		System.out.println("Mybatis => admin certification check list");
		return mybatis.selectList("ChallengeDAO.adminCerCheckList",chal_no);
	}

	// 인증됨으로 상태 변경
	@Override
	public void updatePassYN(HashMap<String, List<String>> arr) {
		System.out.println("Mybatis => updatePassYN");
		mybatis.update("ChallengeDAO.updatePassYN",arr);
	}

	// 날짜 지나면 completion Y로 업데이트
	@Override
	public void endDateCheck(ChallengeVO vo) {
		System.out.println("Mybatis => updateendDateCheck");
		mybatis.update("ChallengeDAO.endDateCheck",vo);
	}
	
	// 인증 받은 것들 chal_no랑 id 받아오는 쿼리
	@Override
	public List<HashMap<String , Object>> paramSql(HashMap<String, List<String>> arr) {
		System.out.println("Mybatis =>paramSql");
		List<HashMap<String, Object>> list = mybatis.selectList("ChallengeDAO.paramSql",arr);
		
		return list;
	}
	
	//pass 개수랑 chal_check_su 개수 출력
	@Override
	public void getPassNCheckSu(HashMap param) {
		System.out.println("Mybatis =>passCount");
		
		Integer pass = mybatis.selectOne("ChallengeDAO.passCount",param);
		if(pass == null) {
			pass= 0;
		}
		System.out.println(pass);
		
		System.out.println("Mybatis =>checkSu");
		Integer checkSu = mybatis.selectOne("ChallengeDAO.checkSu",param);
		if(checkSu == null) {
			checkSu= 0;
		}
		System.out.println(checkSu);
		
		if(pass == checkSu) {
			System.out.println("Mybatis =>updateSuccess");
			mybatis.update("ChallengeDAO.updateSuccess",param);
			mybatis.update("ChallengeDAO.givePoint",param);
		}
	}

	
}
