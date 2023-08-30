package com.green.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.CommunityVO;
import com.green.domain.HashTagVO;
import com.green.domain.HeartVO;
import com.green.domain.ReplyVO;

@Repository("communityDAO")
public class CommunityDAOImpl implements CommunityDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
//Community 
	//Community List 게시글 전체 리스트
	@Override
	public List<CommunityVO> getCommunityList(String userId) {
		System.out.println("Mybatis => community list");
		return mybatis.selectList("CommunityDAO.getCommunityList", userId);
	}
	
	//Community Search List 게시글 검색 리스트 (ID, HashTag)
	@Override	
	public List<CommunityVO> getSearchCommunityList(HashMap map) {
		System.out.println("Mybatis=> my community");
		return mybatis.selectList("CommunityDAO.getSearchCommunityList", map);
	}
	
	//Community My List 내 게시글 리스트 
	@Override
	public List<CommunityVO> getMyCommunityList(CommunityVO vo) {
		System.out.println("Mybatis=> my community");
		return mybatis.selectList("CommunityDAO.getMyCommunityList", vo);
	}
	
	//Community Insert 게시글 등록
	@Override
	public void communityWrite(CommunityVO vo) {
		System.out.println("Mybatis => community insert");
		mybatis.insert("CommunityDAO.communityWrite",vo);
	}
	
	//Community BoardNO 게시글 등록 후 BoardNo 추출
	@Override
	public int getBoardNo() {
		System.out.println("Mybatis => getBoardNo");
		return mybatis.selectOne("CommunityDAO.getBoardNo");
	}
	
	//Community Detail 게시글 하나
	@Override
	public CommunityVO getCommunityDetail(CommunityVO vo) {
		System.out.println("Mybatis=> community detail");
		return mybatis.selectOne("CommunityDAO.getCommunityDetail", vo);
	}
	
	//Community Update 게시글 수정
	@Override
	public void updateCommunity(CommunityVO vo) {
		System.out.println("Mybatis=> community modify");
		mybatis.update("CommunityDAO.updateCommunity", vo);
	}
	
	//Community Delete 게시글 삭제
	@Override
	public void deleteCommunity(CommunityVO vo) {
		System.out.println("Mybatis=> community delete");
		mybatis.delete("CommunityDAO.deleteCommunity", vo);
	}

//HashTag
	//HashTag List 해시태그 목록
	@Override
	public List<HashTagVO> getHashTagList(int board_no) {
		System.out.println("Mybatis=> hashTag list");
		return mybatis.selectList("CommunityDAO.getHashTagList",board_no);
	}
	
	//HashTag TOP5 해시태그 사용 순위 5
	@Override
	public List<HashTagVO> getHashTagTOP5() {
		System.out.println("Mybatis=> hashTagTop5 list");
		return mybatis.selectList("CommunityDAO.getHashTagTOP5");
	}
	
	//HashTag List in Board 글 하나의 해시태그 목록
	@Override
	public List<HashTagVO> getHashTag(int board_no) {
		System.out.println("Mybatis=> getHashTag list");
		return mybatis.selectList("CommunityDAO.getHashTag",board_no);
	}
	
	//HashTag Insert 해시태그 등록
	@Override
	public void boardtagInsert(HashTagVO vo) {
		System.out.println("mybatis => hashtag insert");
		mybatis.insert("CommunityDAO.boardtagInsert", vo);
	}
	
	//HashTag Delete 해시태그 삭제
	@Override
	public void deleteHashTag(HashTagVO vo) {
		System.out.println("mybatis => hashtag delete");
		mybatis.insert("CommunityDAO.deleteHashTag", vo);
	}
	
//Reply
	//Reply List 댓글 목록
	@Override
	public List<ReplyVO> getReplyList(int board_no) {
		System.out.println("Mybatis=> reply list");
		return mybatis.selectList("CommunityDAO.getReplyList",board_no);
	}
	
	//Reply Insert 댓글 등록
	@Override
	public void replyWrite(ReplyVO vo) {
		System.out.println("Mybatis => reply insert");
		mybatis.insert("CommunityDAO.replyWrite",vo);
	}
	
	//Reply Detail 댓글 하나
	@Override
	public ReplyVO getReplyDetail(ReplyVO vo) {
		System.out.println("Mybatis=> reply detail");
		return mybatis.selectOne("CommunityDAO.getReplyDetail",vo);
	}
	
	//Reply Update 댓글 수정
	@Override
	public void updateReply(ReplyVO vo) {
		System.out.println("Mybatis=> reply modify");
		mybatis.update("CommunityDAO.updateReply", vo);
	}
	
	//Reply Delete 댓글 삭제
	@Override
	public void deleteReply(ReplyVO vo) {
		System.out.println("Mybatis=> reply delete");
		mybatis.delete("CommunityDAO.deleteReply",vo);
	}
	
//Like
	//Like Insert 좋아요 등록
	@Override
	public void likeInsert(HeartVO vo) {
		System.out.println("Mybatis => like insert");
		mybatis.insert("CommunityDAO.likeInsert",vo);
	}
	
	//UnLike 좋아요 취소
	@Override
	public void deleteLike(HeartVO vo) {
		System.out.println("Mybatis => like delete");
		mybatis.delete("CommunityDAO.deleteLike", vo);
	}
	
}