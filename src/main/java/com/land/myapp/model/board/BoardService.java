package com.land.myapp.model.board;

import java.util.List;
import java.util.Map;

public interface BoardService {

    //글 등록
    int insertBoard(BoardVO vo) throws Exception;

    //글 수정
    int updateBoard(BoardVO vo);

    //글 삭제

    int deleteBoard(Integer board_num, String member_id) throws Exception;

    int deleteAll() throws Exception;

    //글 상세
    BoardVO getBoard(int board_num);

    //글 목록
    List<BoardVO> getBoardList(BoardVO vo);

    //페이징
    List<BoardVO> getBoardPage(Map map);

    int getCount() throws Exception;

    List<BoardVO> getSearchResultPage(SearchCondition sc) throws Exception;


    int getSearchResultCnt(SearchCondition sc) throws Exception;


    BoardVO prevPage(int board_num);

    BoardVO nextPage(int board_num);
}