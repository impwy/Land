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
    
    //글 작성
    @RequestMapping(value="/insertBoard", method=RequestMethod.GET)
    public String insertBoardGo(BoardVO vo)throws IOException {
        return "board/insertBoard";
    }
    //글 등록
    @RequestMapping(value="/insertBoard", method=RequestMethod.POST)
    public String insertBoard(BoardVO bvo,MemberVO mvo,HttpSession session) {
    	System.out.println("board_content");
    	MemberVO member=memberService.login(mvo);
    	if(member !=null) {
    		session.setAttribute("member", member);
    		return "getBoard";
    	}else{
    		return "member/login";
    	}
    }
    // 수정
    @RequestMapping("/updateBoard")
    public String updateBoard(@ModelAttribute("board") BoardVO vo)throws IOException {
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
    
    
    //로그인
    private boolean loginCheck(HttpServletRequest request) {
        // 1. 세션을 얻어서
        HttpSession session = request.getSession();
        // 2. 세션에 id가 있는지 확인, 있으면 true를 반환
        return session.getAttribute("id")!=null;
    }
	
    
    
    @RequestMapping(value = "/login2", method = RequestMethod.POST)
	public String login(MemberVO vo, MemberDAO memberDAO, HttpSession session) {
		if(vo.getMember_id()==null||vo.getMember_id().equals("")){
			throw new IllegalArgumentException("아이디는 반드시 입력 해야 합니다.");
		}
		MemberVO user=memberDAO.login(vo);
		System.out.println("로그인 인증 처리");

		if (user != null) {
			session.setAttribute("member_id", user.getMember_id());
			return "board/getBoardList";
		}
		else
			return "board/loginboard";
    }
}
