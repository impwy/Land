package com.land.myapp.view.board;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.land.myapp.model.board.PageHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.land.myapp.model.basket.BasketService;
import com.land.myapp.model.board.BoardService;
import com.land.myapp.model.board.BoardVO;
import com.land.myapp.model.member.vo.MemberService;
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
        return "redirect:page";
    }
    //수정    
    @RequestMapping(value="/updateBoard",method=RequestMethod.POST)
    public String updateBoard(BoardVO vo)throws IOException {
    	boardService.updateBoard(vo);
        return "redirect:page";
}
    //삭제
    @PostMapping("/deleteBoard")
    public String deleteBoard(Integer board_num,String member_id,Integer page,Integer pageSize,Model m){

        try{
        m.addAttribute("page",page);
        m.addAttribute("pageSize",pageSize);

       int rowCnt= boardService.deleteBoard(board_num,member_id);

       if(rowCnt==1){
           m.addAttribute("msg","DEL_OK");
           return "redirect:page";
       }
        }catch (Exception e){
            e.printStackTrace();
        }


        return "redirect:page";
    }
    //글 상세보기 ( 원본)
    @RequestMapping("/getBoard")
    public String getBoard(BoardVO vo, Model model,Integer page,Integer pageSize) {
        model.addAttribute("board", boardService.getBoard(vo));
        model.addAttribute("page",page);
        model.addAttribute("pageSize",pageSize);
        return "board/getBoard";
    }
    //--------------------------------------------------------------------------//

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
    public String getBoardPage(Integer page, Integer pageSize, Model model){

        if(page==null)page=1;
        if(pageSize==null)pageSize=10;

        try {
            int totalCnt=boardService.getCount();
            PageHandler pageHandler=new PageHandler(totalCnt,page, pageSize);

            Map map=new HashMap();
            map.put("start",((page-1)*pageSize)+1);
            map.put("end",(pageSize*page));

            List<BoardVO> list=boardService.getBoardPage(map);
            model.addAttribute("boardList",list);
            model.addAttribute("ph",pageHandler);
            model.addAttribute("page",page);
            model.addAttribute("pageSize",pageSize);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "board/getBoardList";
}

      
    
}
