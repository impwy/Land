package com.land.myapp.view.board;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.*;

import javax.servlet.http.HttpSession;

import com.land.myapp.model.board.PageHandler;
import com.land.myapp.model.board.SearchCondition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.land.myapp.model.board.BoardService;
import com.land.myapp.model.board.BoardVO;
import com.land.myapp.model.member.vo.MemberService;
import com.land.myapp.model.member.vo.MemberVO;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@SessionAttributes("board")
public class BoardController {
    @Autowired
    private BoardService boardService;
    
    @Autowired
    private MemberService memberService;

    //글 읽기
    @GetMapping("/insertBoard")
    public String insertBoardGo(Model m,Integer page, Integer pageSize)throws IOException {
        m.addAttribute("mode","new");
        m.addAttribute("page",page);
        m.addAttribute("pageSize",pageSize);
        return "board/getBoard";
    }
    //글 쓰기
    @PostMapping("/insertBoard")
    public String insertBoard(BoardVO vo,MemberVO mvo,Model m,HttpSession session,RedirectAttributes rattr) {
        //멤버컨트롤러에서 로그인정보를 member 객체에 저장. 그 객체를 가져오고
        //아이디를 뽑아온다.
        MemberVO member=(MemberVO) session.getAttribute("member");
        String member_id=member.getMember_id();
         vo.setMember_id(member_id);

        try {
            int rowCnt=boardService.insertBoard(vo);

            if(rowCnt!=1)
                throw new Exception("Write Failed");
            rattr.addFlashAttribute("msg","WRT_OK");
            return "redirect:page";
        } catch (Exception e) {
            e.printStackTrace();
            m.addAttribute("mode","new");
            m.addAttribute(vo);
            m.addAttribute("msg","WRT_ERR");
            return "board/getBoard";
        }
    	}

        //글 수정
        @PostMapping("/updateBoard")
        public String updateBoard(BoardVO vo,MemberVO mvo,Model m,Integer page, Integer pageSize,HttpSession session,RedirectAttributes rattr) {
            //멤버컨트롤러에서 로그인정보를 member 객체에 저장. 그 객체를 가져오고
            mvo=(MemberVO) session.getAttribute("member");
            //아이디를 뽑아온다.
            m.addAttribute("mode","update");
            String member_id=mvo.getMember_id();
            vo.setMember_id(member_id);

            try {
                if(boardService.updateBoard(vo)!=1)
                    throw new Exception("modify failed");
                rattr.addAttribute("page",page);
                rattr.addAttribute("pageSize",pageSize);
                rattr.addFlashAttribute("msg","UP_OK");
                return "redirect:page";
            } catch (Exception e) {
                e.printStackTrace();
                m.addAttribute(vo);
                m.addAttribute("page",page);
                m.addAttribute("pageSize",pageSize);
                m.addAttribute("msg","UP_ERR");
                return "board/getBoard";
            }
        }
    // 수정 폼
//    @RequestMapping(value="/updateBoard",method=RequestMethod.GET)
//    public String updateBoardGo(BoardVO vo)throws IOException {
//        return "redirect:page";
//    }
//    //수정
//    @RequestMapping(value="/updateBoard",method=RequestMethod.POST)
//    public String updateBoard(BoardVO vo)throws IOException {
//    	boardService.updateBoard(vo);
//        return "redirect:page";
//}
    //삭제
    @PostMapping("/deleteBoard")
    public String deleteBoard(Integer board_num, String member_id, Integer page, Integer pageSize, Model m, RedirectAttributes rattr){

        try{
        m.addAttribute("page",page);
        m.addAttribute("pageSize",pageSize);

       int rowCnt= boardService.deleteBoard(board_num,member_id);

       if(rowCnt!=1)
           throw new Exception("board delete error");
           rattr.addFlashAttribute("msg","DEL_OK");
           // RedirectAttributes에 값을 저장하면 세션의 값을 1번만 사용 (메시지가 1번만 나옴)
        }catch (Exception e){
            e.printStackTrace();
            rattr.addFlashAttribute("msg","DEL_ERR");
        }


        return "redirect:page";
    }
    //글 상세보기 ( 원본)
    @GetMapping("/getBoard")
    public String getBoard(int board_num, Model model,Integer page,Integer pageSize,RedirectAttributes rattr) {
        try {
            model.addAttribute("board", boardService.getBoard(board_num));
            model.addAttribute("page",page);
            model.addAttribute("pageSize",pageSize);
        } catch (Exception e) {
            e.printStackTrace();
            rattr.addFlashAttribute("page",page);
            rattr.addFlashAttribute("pageSize",pageSize);
            rattr.addFlashAttribute("msg","WRITE_ERR");
            return "redirect:/page";
        }
        return "board/getBoard";
    }
    //글 읽기 궁성
//    @GetMapping("/getBoard")
//    public String getBoard(Integer board_num,Model m) {
//        try {
//            BoardVO boardVO = boardService.getBoard(board_num);
////    m.addAttribute("boardVO",boardVO); //아래 문장과 동일
//            m.addAttribute(boardVO);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return "board/getBoard";
//    }
    //글 목록
    @RequestMapping(value="/getBoardList",method=RequestMethod.GET)
    public String getBoardList(BoardVO vo, Model model){
        model.addAttribute("boardList", boardService.getBoardList(vo));
        return "board/getBoardList";
    }
    //글 페이징
    @GetMapping("/page")
    public String getBoardPage(SearchCondition sc, Model m){
        try {
            int totalCnt=boardService.getSearchResultCnt(sc);
            m.addAttribute("totalCnt", totalCnt);
            PageHandler pageHandler=new PageHandler(totalCnt,sc);



            List<BoardVO> list=boardService.getSearchResultPage(sc);
            m.addAttribute("boardList",list);
            m.addAttribute("ph",pageHandler);

        } catch (Exception e) {
            e.printStackTrace();
            m.addAttribute("msg","LIST_ERR");
            m.addAttribute("totalCnt",0);
        }
        return "board/getBoardList";
}

      
    
}
