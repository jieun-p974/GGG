package com.green.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.ChallengeDAO;
import com.green.domain.ChallengeCheckVO;
import com.green.domain.ChallengeVO;
import com.green.domain.MemChallengeVO;

@Service("ChallengeService")
public class ChallengeServiceImpl implements ChallengeService{
	@Autowired
	private ChallengeDAO challengeDAO;
	
	//insert
	@Override
	public void insertChallenge(ChallengeVO vo) {
		// TODO Auto-generated method stub
		challengeDAO.challengeWrite(vo);
	}
	
	//challenge sinchung
	public int challengeSinchung(HashMap map) {
		int res = challengeDAO.challengeSinchung(map);
		return res;
	}
	
	//get oneget
	@Override
	public ChallengeVO getChallengeDetail(ChallengeVO vo) {
		return challengeDAO.getChallengeDetail(vo);
	}
	//get list
	@Override
	public List<ChallengeVO> getChallengeList() {
		// TODO Auto-generated method stub
		return challengeDAO.getChallengeList();
	}
	// modify
	@Override
	public void updateChallenge(ChallengeVO vo) {
		// TODO Auto-generated method stub
		challengeDAO.updateChallenge(vo);
	}

	//get my challenge list
	@Override
	public List<ChallengeVO> getMyChallengeList(String userId) {
		List<ChallengeVO> list = challengeDAO.getMyChallengeList(userId);
		return list;
	}
	
	//get my complete list
	@Override
	public List<ChallengeVO> getCompleteList(String userId) {
		List<ChallengeVO> list = challengeDAO.getCompleteList(userId);
		return list;
	}

	//get my challenge check list
	@Override
	public List<HashMap<String, Object>> getChallengeCheck(HashMap param) {
		List<HashMap<String, Object>> list = challengeDAO.getCheck(param);
		System.out.println("서비스");
		for(HashMap d:list) {
			System.out.println(d);
		}
		return list;
	}

	@Override
	public int countCheck(HashMap param) {
		return challengeDAO.countCheck(param);
	}

	@Override
	public void insertCertification(ChallengeCheckVO vo) {
		challengeDAO.insertCertification(vo);
	}

	@Override
	public MemChallengeVO redirectCheckPage(ChallengeCheckVO vo) {
		return challengeDAO.redirectCheckPage(vo);
	}

	// 관리자 인증체크리스트
	@Override
	public List<ChallengeCheckVO> adminCerCheckList(int chal_no) {
		return challengeDAO.adminCerCheckList(chal_no);
	}

	@Override
	public void updatePassYN(HashMap arr) {
		challengeDAO.updatePassYN(arr);
	}

	@Override
	public void endDateCheck(ChallengeVO vo) {
		challengeDAO.endDateCheck(vo);
	}

}
