package com.land.myapp.model.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.land.myapp.model.board.SearchCondition;
import com.land.myapp.model.member.vo.GoodsPaymentVO;
import com.land.myapp.model.member.vo.MemberService;
import com.land.myapp.model.member.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public List<GoodsPaymentVO> getGoodsPaymentList(GoodsPaymentVO vo, int start, int end) {

		return memberDAO.getGoodsPaymentList(vo, start, end);
	}

	public void setMemberDao(MemberDAO memberDao) {
		this.memberDAO = memberDao;
	}

	// ID 중복검사
	public int checkID(String member_id) {
		return memberDAO.checkID(member_id);
	}

	// 회원 유무 검사
	public int checkMember(MemberVO vo) {

		return memberDAO.checkMember(vo);
	}

	// 회원가입
	public void insertMember(MemberVO vo) {
		System.out.println("impl까지 옴");
		memberDAO.insertMember(vo);
	}

	// 로그인
	public MemberVO login(MemberVO vo) {

		return memberDAO.login(vo);
	}

	// 회원정보 수정
	public void updateMember(MemberVO vo) {

		memberDAO.updateMember(vo);
	}

	public int getCountMember(MemberVO vo) {
		return memberDAO.getCountMember(vo);
	}

	// 구매 내역 조회
	@Override
	public List<GoodsPaymentVO> getorderMember(GoodsPaymentVO vo) {
		return memberDAO.getorderMember(vo);
	}

	@Override
	public int getCountOrder(GoodsPaymentVO vo) {
		return memberDAO.getCountOrder(vo);
	}

	@Override
	public int forgotPWChkMember(MemberVO vo) {
		return 0;
	}

	@Override
	public void forgotPWUpdate(MemberVO vo) {

	}

	@Override
	public void dropMember(String member_id) {
		memberDAO.dropMember(member_id);

	}

	@Override
	public void insertGoodsPayment(GoodsPaymentVO vo) {
		memberDAO.insertGoodsPayment(vo);
	}
	// 어드민 관련

	// 멤버 리스트(미사용)
	public List<MemberVO> getMemberList(MemberVO vo) {
		return memberDAO.getMemberList(vo);
	}

	// 멤버 삭제
	@Override
	public int deleteMember(Integer member_no) {
		return memberDAO.deleteMember(member_no);
	}

	// 멤버 상세보기
	@Override
	public MemberVO getMember(int member_no) {
		return memberDAO.getMember(member_no);
	}

	// 멤버 리스트 페이징
	@Override
	public List<MemberVO> getMemberPage(SearchCondition sc) {
		return memberDAO.memberPage(sc);
	}

	@Override
	public int getMemberCount(SearchCondition sc) {
		return memberDAO.memberCount(sc);
	}

}
