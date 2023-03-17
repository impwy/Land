package com.land.myapp.model.board;

import java.util.List;

public interface BoardService {

    //글 등록
    void insertBoard(BoardVO vo);

    //글 수정
    void updateBoard(BoardVO vo);

    //글 삭제
    void deleteBoard(BoardVO vo);

    //글 상세
    BoardVO getBoard(BoardVO vo);

    //글 목록
    List<BoardVO> getBoardList(BoardVO vo);
}
