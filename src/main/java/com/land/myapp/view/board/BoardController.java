package com.land.myapp.view.board;

import com.land.myapp.model.board.BoardService;
import com.land.myapp.model.board.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.io.IOException;

@Controller
@SessionAttributes("board")
public class BoardController {
    @Autowired
    private BoardService boardService;

    //등록
    @RequestMapping("/insertBoard")
    public String insertBoard(BoardVO vo)throws IOException {
        boardService.insertBoard(vo);
        return "board/getBoardList";
    }
    // 수정
    @RequestMapping("/updateBoard")
    public String updateBoard(@ModelAttribute("board") BoardVO vo)throws IOException {
        boardService.updateBoard(vo);
        return "board/getBoardList";
    }
    //삭제
    @RequestMapping("/deleteBoard")
    public String deleteBoard(BoardVO vo){
        boardService.deleteBoard(vo);
        return "board/getBoardList";
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
