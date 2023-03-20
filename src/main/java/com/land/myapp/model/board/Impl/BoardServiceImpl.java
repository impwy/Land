package com.land.myapp.model.board.Impl;

import com.land.myapp.model.board.BoardService;
import com.land.myapp.model.board.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
    @Autowired
    private BoardDAOMybatis boardDAO;

    //글 등록
    public void insertBoard(BoardVO vo) {
        boardDAO.insertBoard(vo);
    }
    //수정
    public void updateBoard(BoardVO vo) {
        boardDAO.updateBoard(vo);
    }
    //삭제
    public void deleteBoard(BoardVO vo) {
        boardDAO.deleteBoard(vo);
    }
    //상세보기
    public BoardVO getBoard(BoardVO vo) {
        return boardDAO.getBoard(vo);
    }

    //글 목록
    public List<BoardVO> getBoardList(BoardVO vo) {
        return boardDAO.getBoardList(vo);
    }
}
