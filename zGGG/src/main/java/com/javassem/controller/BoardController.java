package com.javassem.controller;

import java.io.IOException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.domain.BoardVO;
import com.javassem.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;

	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return step;
	}
	
	// 글 목록 검색
	@RequestMapping("/getBoardList.do")
	//public void getBoardList(Model model) { // 검색하기 전에
	public void getBoardList(String searchCondition, String searchKeyword, Model model) {
		
		System.out.println(searchCondition);
		System.out.println(searchKeyword);
		HashMap map = new HashMap();
		map.put("searchCondition", searchCondition);
		map.put("searchKeyword", searchKeyword);
	 	
		model.addAttribute("boardList", boardService.getBoardList(map));
		// ViewResolver를 지정하지 않으면 아래처럼 페이지명 지정
		// return "views/getBoardList.jsp"; // View 이름 리턴
	}
	
	// 글 등록
	@RequestMapping(value="/saveBoard.do")
	public String insertBoard(BoardVO vo) throws IOException{
		boardService.insertBoard(vo);
		return "redirect:/getBoardList.do";
	}
	
	// 글 수정
    @RequestMapping("/updateBoard.do")
    public String updateBoard(@ModelAttribute("board") BoardVO vo) { // BoardVO board
       boardService.updateBoard(vo);
       return "redirect:/getBoard.do?seq="+vo.getSeq();
    }

    // 글 삭제
    @RequestMapping("/deleteBoard.do")
    public String deleteBoard(BoardVO vo) {
       boardService.deleteBoard(vo);
       return "redirect:/getBoardList.do";
    }

    // 글 상세 조회
    @RequestMapping("/getBoard.do")
    public void getBoard(BoardVO vo, Model model) {
       model.addAttribute("board", boardService.getBoard(vo)); // Model 정보 저장         
    }
    
    //------------------------------------------
    @RequestMapping("/test.do")
    public void test(String number2){
       // 인자의 변수명이 테스트에서 지정하는 파라메터명과 동일해야 한다
       System.out.println("/test 요청 :" + number2);
    }
    
    @RequestMapping("/test2.do")
    public String test2(String name, Model m){
       // 인자의 변수명이 테스트에서 지정하는 파라메터명과 동일해야 한다
       
       m.addAttribute("greeting", name+"님 반갑습니다");
       m.addAttribute("message", "오늘도 행복하세요");
       
       return "happyPage"; // 뷰페이지 지정
    }
    
    //------------------------------------------
    @RequestMapping("/getBoardWithUI.do")
    public void getBoardWithUI(Model model){
       System.out.println("/getBoardWithUI.do 요청");
 
       
       model.addAttribute("boardList", boardService.getBoardList());

    }
	

}
