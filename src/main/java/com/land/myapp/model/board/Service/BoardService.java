package com.land.myapp.model.board.Service;

import com.land.myapp.model.board.DTO.BoardDTO;
import com.land.myapp.main.SearchCondition;

import java.util.List;
import java.util.Map;

public interface BoardService {

    //글 등록
    int insertBoard(BoardDTO vo) throws Exception;

    //글 수정
    int updateBoard(BoardDTO vo);

    //글 삭제
    int deleteBoard(Integer board_num, String member_id) throws Exception;

    //전세 삭제(테스트용)
    int deleteAll() throws Exception;

    //글 상세
    BoardDTO getBoard(int board_num);

    //글 목록
    List<BoardDTO> getBoardList(BoardDTO vo);

    //페이징(검색없는버전)
    List<BoardDTO> getBoardPage(Map map);

    int getCount() throws Exception;

    //검색 페이징
    List<BoardDTO> getSearchResultPage(SearchCondition sc) throws Exception;


    int getSearchResultCnt(SearchCondition sc) throws Exception;

    //이전 글
    BoardDTO prevPage(int board_num);
    //다음글
    BoardDTO nextPage(int board_num);
}