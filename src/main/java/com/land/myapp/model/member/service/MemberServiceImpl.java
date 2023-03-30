package com.land.myapp.model.member.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.land.myapp.model.goods_payment.GoodsPaymentVO;
import com.land.myapp.model.member.vo.MemberService;
import com.land.myapp.model.member.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;
	
	
	
	
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
		// 테스트
		public List<MemberVO> getMemberList(int start, int end, MemberVO vo) {
			return memberDAO.getMemberList(start, end, vo);
		}
		
		
		public int forgotPWChkMember(MemberVO vo) {
			// TODO Auto-generated method stub
			return 0;
		}
		public void forgotPWUpdate(MemberVO vo) {
			// TODO Auto-generated method stub
			
		}
		//구매 내역 조회
		@Override
		public List<GoodsPaymentVO> getorderMember(GoodsPaymentVO vo){
			return memberDAO.getorderMember(vo);
		}
		
		@Override
		public int getCountOrder(GoodsPaymentVO vo) {
			// TODO Auto-generated method stub
			return memberDAO.getCountOrder(vo);
		}
		
		//회원 탈퇴
		public void deleteMember(MemberVO vo) {
			memberDAO.deleteMember(vo);
		}
}
