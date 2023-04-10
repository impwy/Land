package com.land.myapp.model.member.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.land.myapp.main.SearchCondition;
import com.land.myapp.model.member.DTO.GoodsPaymentDTO;
import com.land.myapp.model.member.DTO.MemberDTO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public List<GoodsPaymentDTO> getGoodsPaymentList(GoodsPaymentDTO vo, int start, int end) {

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
	public int checkMember(MemberDTO vo) {

		return memberDAO.checkMember(vo);
	}

	// 회원가입
	public void insertMember(MemberDTO vo) {
		System.out.println("impl까지 옴");
		memberDAO.insertMember(vo);
	}

	// 로그인
	public MemberDTO login(MemberDTO vo) {

		return memberDAO.login(vo);
	}

	// 회원정보 수정
	public void updateMember(MemberDTO vo) {

		memberDAO.updateMember(vo);
	}

	public int getCountMember(MemberDTO vo) {
		return memberDAO.getCountMember(vo);
	}

	// 구매 내역 조회
	@Override
	public List<GoodsPaymentDTO> getorderMember(GoodsPaymentDTO vo) {
		return memberDAO.getorderMember(vo);
	}

	@Override
	public int getCountOrder(GoodsPaymentDTO vo) {
		return memberDAO.getCountOrder(vo);
	}

	@Override
	public int forgotPWChkMember(MemberDTO vo) {
		return 0;
	}

	@Override
	public void forgotPWUpdate(MemberDTO vo) {

	}

	@Override
	public void dropMember(String member_id) {
		memberDAO.dropMember(member_id);

	}

	@Override
	public void insertGoodsPayment(GoodsPaymentDTO vo) {
		memberDAO.insertGoodsPayment(vo);
	}
	// 어드민 관련

	// 멤버 리스트(미사용)
	public List<MemberDTO> getMemberList(MemberDTO vo) {
		return memberDAO.getMemberList(vo);
	}

	// 멤버 삭제
	@Override
	public int deleteMember(Integer member_no) {
		return memberDAO.deleteMember(member_no);
	}

	// 멤버 상세보기
	@Override
	public MemberDTO getMember(int member_no) {
		return memberDAO.getMember(member_no);
	}

	// 멤버 리스트 페이징
	@Override
	public List<MemberDTO> getMemberPage(SearchCondition sc) {
		return memberDAO.memberPage(sc);
	}

	@Override
	public int getMemberCount(SearchCondition sc) {
		return memberDAO.memberCount(sc);
	}

}
