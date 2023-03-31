package com.land.myapp.model.member.vo;

import java.util.List;

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

	// 회원 리스트
	List<MemberVO> getMemberList(MemberVO vo);

	int getCountMember(MemberVO vo);

	// 구매 내역 조회
	List<GoodsPaymentVO> getorderMember(GoodsPaymentVO vo);

	// 구매 갯수
	int getCountOrder(GoodsPaymentVO vo);

	int deleteMember(Integer member_no);

	MemberVO getMember(Integer member_no);

	//int dropMember(String member_id);
	void dropMember(MemberVO vo);

	void insertGoodsPayment(GoodsPaymentVO vo);

	public List<GoodsPaymentVO> getGoodsPaymentList(GoodsPaymentVO vo,int start,int end);
}
