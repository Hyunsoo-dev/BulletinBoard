package com.springbook.view.board;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;

public class BoardController {
	//글 등록
	@RequestMapping(value="/insertBoard.do")
	public String insertBoard(BoardVO vo, BoardDAO boardDAO){
		
		System.out.println("글 등록 처리");
		
		boardDAO.insertBoard(vo);

		return "getBoardList.do";
	}
	
	//글 수정
	@RequestMapping(value="/updateBoard.do")
	public String updateBoard(BoardVO vo,BoardDAO boardDAO) {
		boardDAO.updateBoard(vo);
		return "getBoardList.do";
	}
	
	//글 삭제
	@RequestMapping(value="/deleteBoard.do")
	public String deleteBoard(BoardVO vo,BoardDAO boardDAO){
		
		System.out.println("글 삭제 처리");

		boardDAO.deleteBoard(vo);

		return "getBoardList.do";
	}
	
	//글 상세 조회
	@RequestMapping(value="/getBoard.do")
	public ModelAndView getBoard(BoardVO vo,BoardDAO boardDAO,ModelAndView mav){
		System.out.println("글 상세 조회 처리");
			
		BoardVO board = boardDAO.getBoard(vo);
		mav.addObject("board",board);
		mav.setViewName("getBoard");
		return mav;
	}
	
	//글 목록 검색
	@RequestMapping(value="/getBoardList.do")
	public ModelAndView getBoardList(BoardVO vo,BoardDAO boardDAO,ModelAndView mav){
		System.out.println("글 목록 검색 처리");
		
		
		List<BoardVO> boardList = boardDAO.getBoardList(vo);
		mav.addObject("boardList",boardList);
		mav.setViewName("getBoardList");
		return mav;
	}
}
