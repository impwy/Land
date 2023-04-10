package com.land.myapp.model.board.Service;

import com.land.myapp.model.board.DTO.BoardDTO;
import com.land.myapp.main.SearchCondition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
    @Autowired
    private BoardDAOMybatis boardDAO;

    @Override
    //글 등록
    public int insertBoard(BoardDTO vo)throws Exception {
//        throw new Exception("test");
        return boardDAO.insertBoard(vo);

    }
    @Override
    //수정
    public int updateBoard(BoardDTO vo) {
       return boardDAO.updateBoard(vo);

    }


    //삭제
    @Override
    public int deleteBoard(Integer board_num, String member_id) throws Exception{
        return boardDAO.deleteBoard(board_num,member_id);
    }

    //전체삭제(테스트용)
    @Override
    public int deleteAll() throws Exception {
        return boardDAO.deleteAll();
    }


    @Override
    //글 읽기
    public BoardDTO getBoard(int board_num) {
        boardDAO.increaseViewCnt(board_num);
        return boardDAO.getBoard(board_num);
    }

    @Override
    //글 목록
    public List<BoardDTO> getBoardList(BoardDTO vo) {
        return boardDAO.getBoardList(vo);
    }
    //페이징(이전버전)
    public List<BoardDTO> getBoardPage(Map map){
        return boardDAO.getBoardPage(map);
    }

    @Override
    public int getCount() throws Exception {
        return boardDAO.count();
    }

    //검색페이징
    @Override
    public List<BoardDTO> getSearchResultPage(SearchCondition sc)throws Exception {
        return boardDAO.searchSelectPage(sc);
    }

    @Override
    public int getSearchResultCnt(SearchCondition sc) throws Exception {
        return boardDAO.searchResultCnt(sc);
    }

    //이전글
    @Override
    public BoardDTO prevPage(int board_num) {
        return boardDAO.prevPage(board_num);
    }
    //다음글
    @Override
    public BoardDTO nextPage(int board_num) {
        return boardDAO.nextPage(board_num);
    }


}

