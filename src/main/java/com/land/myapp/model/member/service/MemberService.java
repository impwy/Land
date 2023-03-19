package com.land.myapp.model.member.service;

import java.util.List;


import com.land.myapp.model.member.vo.MemberVO;


public interface MemberService {
	
	// ID 중복검사
		int checkID(MemberVO vo);
		
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
		List<MemberVO> getMemberList(int start, int end, MemberVO vo);
		int getCountMember(MemberVO vo);
	}
