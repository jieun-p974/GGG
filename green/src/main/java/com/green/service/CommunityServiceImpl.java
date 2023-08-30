package com.green.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.CommunityDAO;
import com.green.domain.CommunityVO;
import com.green.domain.HashTagVO;
import com.green.domain.HeartVO;
import com.green.domain.ReplyVO;

@Service("CommunityService")
public class CommunityServiceImpl implements CommunityService{
	@Autowired
	private CommunityDAO communityDAO;
	
//Community 
	//Community List 게시글 전체 리스트
	@Override
	public List<CommunityVO> getCommunityList(String userId) {
		// TODO Auto-generated method stub
		return communityDAO.getCommunityList(userId);
	}	
	
	//Community Search List 게시글 검색 리스트 (ID, HashTag)
	@Override
	public List<CommunityVO> getSearchCommunityList(HashMap map) {
		// TODO Auto-generated method stub
		return communityDAO.getSearchCommunityList(map);
	}
	
	//Community My List 내 게시글 리스트 
	@Override
	public List<CommunityVO> getMyCommunityList(CommunityVO vo) {
		// TODO Auto-generated method stub
		return communityDAO.getMyCommunityList(vo);
	}
	
	//Community Insert 게시글 등록
	@Override
	public void insertCommunity(CommunityVO vo) {
		// TODO Auto-generated method stub
		communityDAO.communityWrite(vo);
	}
	
	//Community BoardNO 게시글 등록 후 BoardNo 추출
	public int getBoardNo() {
		return communityDAO.getBoardNo();
	}
	
	//Community Detail 게시글 하나
	@Override
	public CommunityVO getCommunityDetail(CommunityVO vo) {
		return communityDAO.getCommunityDetail(vo);
	}
	
	//Community Update 게시글 수정
	@Override
	public void updateCommunity(CommunityVO vo) {
		// TODO Auto-generated method stub
		communityDAO.updateCommunity(vo);
	}
	
	//Community Delete 게시글 삭제
	@Override
	public void deleteCommunity(CommunityVO vo) {
		// TODO Auto-generated method stub
		communityDAO.deleteCommunity(vo);
	}
	
//HashTag
	//HashTag List 해시태그 목록
	@Override
	public List<HashTagVO> getHashTagList(int board_no) {
		// TODO Auto-generated method stub
		return communityDAO.getHashTagList(board_no);
	}
	
	//HashTag TOP5 해시태그 사용 순위 5
	@Override
	public List<HashTagVO> getHashTagTOP5() {
		// TODO Auto-generated method stub
		return communityDAO.getHashTagTOP5();
	}
	
	//HashTag List in Board 글 하나의 해시태그 목록
	@Override
	public List<HashTagVO> getHashTag(int board_no) {
		// TODO Auto-generated method stub
		return communityDAO.getHashTag(board_no);
	}
	
	//HashTag Insert 해시태그 등록
	@Override
	public void boardtagInsert(HashTagVO vo) {
		communityDAO.boardtagInsert(vo);
	}
	
	//HashTag Delete 해시태그 삭제
	@Override
	public void deleteHashTag(HashTagVO vo) {
		communityDAO.deleteHashTag(vo);
	}
	
//Reply
	//Reply List 댓글 목록
	@Override
	public List<ReplyVO> getReplyList(int board_no) {
		// TODO Auto-generated method stub
		return communityDAO.getReplyList(board_no);
	}
	
	//Reply Insert 댓글 등록
	@Override
	public void insertReply(ReplyVO vo) {
		// TODO Auto-generated method stub
		communityDAO.replyWrite(vo);
	}
	
	//Reply Detail 댓글 하나
	@Override
	public ReplyVO getReplyDetail(ReplyVO vo) {
		return communityDAO.getReplyDetail(vo);
	}
	
	//Reply Update 댓글 수정
	@Override
	public void updateReply(ReplyVO vo) {
		// TODO Auto-generated method stub
		communityDAO.updateReply(vo);
	}
	
	//Reply Delete 댓글 삭제
	@Override
	public void deleteReply(ReplyVO vo)	 {
		// TODO Auto-generated method stub
		communityDAO.deleteReply(vo);
	}
	
//Like
	//Like Insert 좋아요 등록
	@Override
	public void insertLike(HeartVO vo) {
		// TODO Auto-generated method stub
		communityDAO.likeInsert(vo);
	}
	
	//UnLike 좋아요 취소
	@Override
	public void deleteLike(HeartVO vo) {
		// TODO Auto-generated method stub
		communityDAO.deleteLike(vo);
	}
	
	
}