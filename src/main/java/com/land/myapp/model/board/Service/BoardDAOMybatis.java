package com.land.myapp.model.board.Service;

import com.land.myapp.model.board.DTO.BoardDTO;
import com.land.myapp.main.SearchCondition;
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
    public int insertBoard(BoardDTO vo) throws Exception{
        return mybatis.insert("BoardDAO.insertBoard",vo);
    }
    //글 수정
    public int updateBoard(BoardDTO vo){
       return mybatis.update("BoardDAO.updateBoard",vo);

    }
    // 글 삭제
    public int deleteBoard(Integer board_num,String member_id){
        Map map=new HashMap();
        map.put("board_num",board_num);
        map.put("member_id",member_id);
        return mybatis.delete("BoardDAO.deleteBoard",map);

    }
    //모두 지우기(테스트용)
    public int deleteAll(){
        return mybatis.delete("BoardDAO.deleteAll");

    }
    //글 상세
    public BoardDTO getBoard(int board_num){
        return (BoardDTO)mybatis.selectOne("BoardDAO.getBoard",board_num);
    }

    //이전 글
    public BoardDTO prevPage(int board_num){
        System.out.println(board_num);
        return (BoardDTO) mybatis.selectOne("BoardDAO.prevPage",board_num);}
    //다음 글
    public BoardDTO nextPage(int board_num){return (BoardDTO) mybatis.selectOne("BoardDAO.nextPage",board_num);}
    //글 목록
    public List<BoardDTO> getBoardList(BoardDTO vo){
        return mybatis.selectList("BoardDAO.getBoardList",vo);
    }

    //페이징
    public List<BoardDTO> getBoardPage(Map map) {
        return mybatis.selectList("BoardDAO.getBoardPage", map);
    }
    //카운트
    public int count()throws Exception{
        return mybatis.selectOne("BoardDAO.count");
    }
    //조회수 증가
    public int increaseViewCnt(Integer board_num){
        return mybatis.update("BoardDAO.increaseViewCnt", board_num);
    }
    //검색
    public List<BoardDTO> searchSelectPage(SearchCondition sc){
        return mybatis.selectList("BoardDAO.searchSelectPage",sc);
    }
    public int searchResultCnt(SearchCondition sc)throws Exception{
        return mybatis.selectOne("BoardDAO.searchResultCnt",sc);
    }


}
