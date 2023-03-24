package com.land.myapp.model.board.Impl;

import com.land.myapp.model.board.BoardVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.*;

@Repository
public class BoardDAOMybatis {

    @Autowired
    private SqlSessionTemplate mybatis;
    //글 등록
    public void insertBoard(BoardVO vo){
        System.out.println("==>글 등록");
        mybatis.insert("BoardDAO.insertBoard",vo);
    }
    //글 수정
    public void updateBoard(BoardVO vo){
        System.out.println("==>글 수정");
        mybatis.update("BoardDAO.updateBoard",vo);
    }
    // 글 삭제
    public void deleteBoard(BoardVO vo){
        System.out.println("==> 글 삭제");
        mybatis.delete("BoardDAO.deleteBoard",vo);
    }

    //글 상세
    public BoardVO getBoard(BoardVO vo){
        System.out.println("==> 글 상세");
        return (BoardVO)mybatis.selectOne("BoardDAO.getBoard",vo);
    }
    //글 목록
    public List<BoardVO> getBoardList(BoardVO vo){
        System.out.println("==> 글 상세 목록");
        return mybatis.selectList("BoardDAO.getBoardList",vo);
    }

    //페이징
    public List<BoardVO> getBoardPage(Map map) {
        return mybatis.selectList("BoardDAO.getBoardPage", map);
    }
    //카운트
    public int count()throws Exception{
        return mybatis.selectOne("BoardDAO.count");
    }
}
