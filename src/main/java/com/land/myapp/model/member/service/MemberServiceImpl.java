package com.land.myapp.model.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.land.myapp.model.member.dao.MemberDAO;
import com.land.myapp.model.member.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDAO memberDAO;
	
	// ID 중복검사
		public int checkID(MemberVO vo) {
			return memberDAO.checkID(vo);
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

		public int getCountMember(MemberVO vo) {
			return memberDAO.getCountMember(vo);
		}
		@Override
		public int forgotPWChkMember(MemberVO vo) {
			// TODO Auto-generated method stub
			return 0;
		}
		@Override
		public void forgotPWUpdate(MemberVO vo) {
			// TODO Auto-generated method stub
			
		}
	

	
	
}
