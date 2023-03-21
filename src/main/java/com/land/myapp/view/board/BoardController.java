package com.land.myapp.view.board;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.land.myapp.model.board.BoardService;
import com.land.myapp.model.board.BoardVO;
import com.land.myapp.model.member.dao.MemberDAO;
import com.land.myapp.model.member.vo.MemberVO;

@Controller
@SessionAttributes("board")
public class BoardController {
    @Autowired
    private BoardService boardService;
    
    //글 작성
    @RequestMapping(value="/insertBoard", method=RequestMethod.GET)
    public String insertBoardGo(BoardVO vo)throws IOException {
        return "board/insertBoard";
    }
    //글 등록
    @RequestMapping(value="/insertBoard", method=RequestMethod.POST)
    public String insertBoard(BoardVO vo,
    		@RequestParam(value="member_id",required=false,defaultValue="Guest") String member_id )throws IOException {
    	vo.setMember_id(member_id);
        boardService.insertBoard(vo);
        return "redirect:getBoardList";
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
    @RequestMapping(value = "/loginBoard", method = RequestMethod.GET)
	public String loginView(@ModelAttribute("user") MemberVO vo) {
		System.out.println("로그인 화면으로 이동");
		vo.setMember_id("admin");
		vo.setMember_pwd("a");
		return "board/loginboard";
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
