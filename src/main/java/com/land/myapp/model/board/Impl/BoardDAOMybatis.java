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
    public int insertBoard(BoardVO vo) throws Exception{
        return mybatis.insert("BoardDAO.insertBoard",vo);
    }
    //글 수정
    public int updateBoard(BoardVO vo){
        System.out.println("==>글 수정");
       return mybatis.update("BoardDAO.updateBoard",vo);

    }
    // 글 삭제
    public int deleteBoard(Integer board_num,String member_id){
        System.out.println("==> 글 삭제");
        Map map=new HashMap();
        map.put("board_num",board_num);
        map.put("member_id",member_id);
        return mybatis.delete("BoardDAO.deleteBoard",map);

    }

    //글 상세
    public BoardVO getBoard(BoardVO vo){
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
