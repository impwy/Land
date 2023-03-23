package com.land.myapp.view.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.land.myapp.model.board.BoardService;
import com.land.myapp.model.board.BoardVO;
import com.land.myapp.model.member.dao.MemberDAO;
import com.land.myapp.model.member.service.MemberService;
import com.land.myapp.model.member.vo.MemberVO;

@Controller
@SessionAttributes("board")
public class BoardController {
    @Autowired
    private BoardService boardService;
    
    @Autowired
    private MemberService memberService;
    
    //글 작성폼
    @RequestMapping(value="/insertBoard", method=RequestMethod.GET)
    public String insertBoardGo(BoardVO vo)throws IOException {
        return "board/insertBoard";
    }
    //글 등록
    @RequestMapping(value="/insertBoard", method=RequestMethod.POST)
    public String insertBoard(BoardVO vo,MemberVO mvo,HttpSession session) {
    	System.out.println("board_content");
    	boardService.insertBoard(vo);
    		return "redirect:getBoardList";
    	}
    
    // 수정 폼
    @RequestMapping(value="/updateBoard",method=RequestMethod.GET)
    public String updateBoardGo(BoardVO vo)throws IOException {
        return "board/updateBoard";
    }
    //수정    
    @RequestMapping(value="/updateBoard",method=RequestMethod.POST)
    public String updateBoard(BoardVO vo)throws IOException {
    	boardService.updateBoard(vo);
        return "redirect:getBoardList";
}
    //삭제
    @RequestMapping("/deleteBoard")
    public String deleteBoard(BoardVO vo){
        boardService.deleteBoard(vo);
        return "redirect:getBoardList";
    }
    //글 상세보기
    @RequestMapping("/getBoard")
    public String getBoard(BoardVO vo, Model model) {
        model.addAttribute("board", boardService.getBoard(vo));
        return "board/getBoard";
    }
    //글 목록
    @RequestMapping(value="/getBoardList",method=RequestMethod.GET)
    public String getBoardList(BoardVO vo, Model model){
        model.addAttribute("boardList", boardService.getBoardList(vo));
        return "board/getBoardList";
    }
      
    
}
