package com.land.myapp.model.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.land.myapp.model.board.SearchCondition;
import com.land.myapp.model.member.vo.GoodsPaymentVO;
import com.land.myapp.model.member.vo.MemberVO;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	// 아이디 중복검사
	public int checkID(String member_id) {
		return mybatis.selectOne("MemberDAO.checkID", member_id);
	}

	// 회원 존재 유무 검사
	public int checkMember(MemberVO vo) {
		return mybatis.selectOne("MemberDAO.checkMember", vo);
	}

	// 회원가입
	public void insertMember(MemberVO vo) {
		System.out.println("dao로넘어옴");
		mybatis.insert("MemberDAO.insertMember", vo);
	}

	// 로그인

	public MemberVO login(MemberVO vo) {
		System.out.println("dao로넘어옴");
		return (MemberVO) mybatis.selectOne("MemberDAO.login", vo);
	}

	// 회원정보 수정
	public void updateMember(MemberVO vo) {
		System.out.println("dao로 넘어옴");
		mybatis.update("MemberDAO.updateMember", vo);
	}

	// 테스트용

	// 구매 내역 조회
	public List<GoodsPaymentVO> getorderMember(GoodsPaymentVO vo) {

		return mybatis.selectList("MemberDAO.orderMember", vo);
	}

	// 구매 갯수
	public int getCountOrder(GoodsPaymentVO vo) {
		return mybatis.selectOne("MemberDAO.CountOrder", vo);
	}

	// 회원 탈퇴
	public void dropMember(String member_id) {
		System.out.println("dao로 넘어옴");
		mybatis.delete("MemberDAO.dropMember", member_id);

	}

	// 주문
	public void insertGoodsPayment(GoodsPaymentVO vo) {
		mybatis.insert("GoodsPaymentDAO.insertGoodsPayment", vo);
	}

	public int getCountMember(MemberVO vo) {
		return mybatis.selectOne("MemberDAO.getCountMember", vo);
	}

	public List<GoodsPaymentVO> getGoodsPaymentList(GoodsPaymentVO vo, int start, int end) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", vo);
		map.put("start", start);
		map.put("end", end);
		return mybatis.selectList("GoodsPaymentDAO.getGoodsList", map);
	}

	// 어드민 회원 리스트(미사용)
	public List<MemberVO> getMemberList(MemberVO vo) {
		return mybatis.selectList("MemberDAO.getMemberList", vo);
	}
	
	// 어드민 회원 삭제
	public int deleteMember(Integer member_no) {
		Map map = new HashMap();
		map.put("member_no", member_no);
		return mybatis.delete("MemberDAO.deleteMember", map);
	}

	// 어드민 회원리스트 페이징
	public List<MemberVO> memberPage(SearchCondition sc) {
		return mybatis.selectList("MemberDAO.memberPage", sc);
	}
	// 어드민 회원 정보
	public MemberVO getMember(int member_no) {
		return mybatis.selectOne("MemberDAO.getMember", member_no);
	}

	public int memberCount(SearchCondition sc) {
		return mybatis.selectOne("MemberDAO.memberCount", sc);
	}

	
}
