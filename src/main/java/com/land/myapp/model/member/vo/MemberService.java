package com.land.myapp.model.member.vo;

import java.util.List;

import com.land.myapp.model.board.SearchCondition;

public interface MemberService {

	// ID 중복검사
	int checkID(String member_id);

	// 로그인시 회원 체크
	int checkMember(MemberVO vo);

	// 회원가입
	void insertMember(MemberVO vo);

	// 회원정보 수정
	void updateMember(MemberVO vo);

	// 로그인
	MemberVO login(MemberVO vo);

	// 비밀번호 찾기
	int forgotPWChkMember(MemberVO vo);

	void forgotPWUpdate(MemberVO vo);

	int getCountMember(MemberVO vo);

	// 구매 내역 조회
	List<GoodsPaymentVO> getorderMember(GoodsPaymentVO vo);

	// 구매 갯수
	int getCountOrder(GoodsPaymentVO vo);

	// 회원 탈퇴
	void dropMember(String member_id);

	void insertGoodsPayment(GoodsPaymentVO vo);

	public List<GoodsPaymentVO> getGoodsPaymentList(GoodsPaymentVO vo, int start, int end);

	// 어드민 관련
	// 회원 리스트(미사용)
	List<MemberVO> getMemberList(MemberVO vo);

	// 어드민 회원 삭제
	int deleteMember(Integer member_no);

	// 어드민 회원 페이징
	List<MemberVO> getMemberPage(SearchCondition sc);

	// 어드민 회원 상세보기
	MemberVO getMember(int member_no);
	
	int getMemberCount(SearchCondition sc);

}
