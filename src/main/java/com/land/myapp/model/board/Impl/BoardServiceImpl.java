package com.land.myapp.model.board.Impl;

import com.land.myapp.model.board.BoardService;
import com.land.myapp.model.board.BoardVO;
import com.land.myapp.model.board.SearchCondition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
    @Autowired
    private BoardDAOMybatis boardDAO;

    @Override
    //글 등록
    public int insertBoard(BoardVO vo)throws Exception {
//        throw new Exception("test");
        return boardDAO.insertBoard(vo);

    }
    @Override
    //수정
    public int updateBoard(BoardVO vo) {
       return boardDAO.updateBoard(vo);

    }


    //삭제
    @Override
    public int deleteBoard(Integer board_num, String member_id) throws Exception{
        return boardDAO.deleteBoard(board_num,member_id);
    }

    @Override
    public int deleteAll() throws Exception {
        return boardDAO.deleteAll();
    }


    @Override
    //상세보기
    public BoardVO getBoard(int board_num) {
        boardDAO.increaseViewCnt(board_num);
        return boardDAO.getBoard(board_num);
    }

    @Override
    //글 목록
    public List<BoardVO> getBoardList(BoardVO vo) {
        return boardDAO.getBoardList(vo);
    }
    //페이징
    public List<BoardVO> getBoardPage(Map map){
        return boardDAO.getBoardPage(map);
    }

    @Transactional(isolation = Isolation.READ_COMMITTED)
    @Override
    public int getCount() throws Exception {
        return boardDAO.count();
    }

    //검색
    @Override
    public List<BoardVO> getSearchResultPage(SearchCondition sc)throws Exception {
        return boardDAO.searchSelectPage(sc);
    }

    @Override
    public int getSearchResultCnt(SearchCondition sc) throws Exception {
        return boardDAO.searchResultCnt(sc);
    }


}

