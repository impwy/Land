package com.land.myapp.model.member.Service;

import java.util.List;

import com.land.myapp.main.SearchCondition;
import com.land.myapp.model.member.DTO.GoodsPaymentDTO;
import com.land.myapp.model.member.DTO.MemberDTO;

public interface MemberService {

	// ID 중복검사
	int checkID(String member_id);

	// 로그인시 회원 체크
	int checkMember(MemberDTO vo);

	// 회원가입
	void insertMember(MemberDTO vo);

	// 회원정보 수정
	void updateMember(MemberDTO vo);

	// 로그인
	MemberDTO login(MemberDTO vo);

	// 비밀번호 찾기
	int forgotPWChkMember(MemberDTO vo);

	void forgotPWUpdate(MemberDTO vo);

	int getCountMember(MemberDTO vo);

	// 구매 내역 조회
	List<GoodsPaymentDTO> getorderMember(GoodsPaymentDTO vo);

	// 구매 갯수
	int getCountOrder(GoodsPaymentDTO vo);

	// 회원 탈퇴
	void dropMember(String member_id);

	void insertGoodsPayment(GoodsPaymentDTO vo);

	public List<GoodsPaymentDTO> getGoodsPaymentList(GoodsPaymentDTO vo, int start, int end);

	// 어드민 관련
	// 회원 리스트(미사용)
	List<MemberDTO> getMemberList(MemberDTO vo);

	// 어드민 회원 삭제
	int deleteMember(Integer member_no);

	// 어드민 회원 페이징
	List<MemberDTO> getMemberPage(SearchCondition sc);

	// 어드민 회원 상세보기
	MemberDTO getMember(int member_no);
	
	int getMemberCount(SearchCondition sc);

}
