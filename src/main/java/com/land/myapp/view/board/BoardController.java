package com.land.myapp.view.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.land.myapp.model.board.BoardService;
import com.land.myapp.model.board.BoardVO;
import com.land.myapp.model.board.PageHandler;
import com.land.myapp.model.board.SearchCondition;
import com.land.myapp.model.member.vo.MemberService;
import com.land.myapp.model.member.vo.MemberVO;

@Controller
@SessionAttributes("board")
public class BoardController {
    @Autowired
    private BoardService boardService;

    @Autowired
    private MemberService memberService;

    //글 읽기
    @GetMapping("/getBoard")
    public String getBoard(Integer board_num, Model model,Integer page,Integer pageSize,RedirectAttributes rattr,SearchCondition sc) {
        try {
            model.addAttribute("board", boardService.getBoard(board_num));
            model.addAttribute("prevPage",boardService.prevPage(board_num));
            model.addAttribute("nextPage",boardService.nextPage(board_num));
            model.addAttribute("sc",sc);
        } catch (Exception e) {
            e.printStackTrace();
            rattr.addFlashAttribute("msg","READ_ERR");
            return "redirect:/page"+sc.getQueryString();
        }
        return "board/getBoard";
    }
    //글 쓰기로 이동
    @GetMapping("/insertBoard")
    public String insertBoard( Model m)throws IOException {
        m.addAttribute("mode","new");
        return "board/getBoard";
    }
    //글 쓰기
    @PostMapping("/insertBoard")
    public String insertBoard(BoardVO vo,Model m,HttpSession session,RedirectAttributes rattr) {
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


    //이전글
    @GetMapping("/prevPage")
    public String getPrevPage(Model m,Integer page, Integer pageSize,int prevPage){
        try {
            m.addAttribute("page",page);
            m.addAttribute("pageSize",pageSize);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "board/getBoard";
    }

    //다음글
    @GetMapping("/nextPage")
    public String getNextPage(Model m,Integer page, Integer pageSize,int nextPage){
        try {
            m.addAttribute("page",page);
            m.addAttribute("pageSize",pageSize);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "board/getBoard";
    }

    //글 목록(페이징 이전에 사용하던것)
    @RequestMapping(value="/getBoardList",method=RequestMethod.GET)
    public String getBoardList(BoardVO vo, Model model){
        model.addAttribute("boardList", boardService.getBoardList(vo));
        return "board/getBoardList";
    }
    //글 목록 및 페이징
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
