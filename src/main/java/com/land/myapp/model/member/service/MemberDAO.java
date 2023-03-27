package com.land.myapp.model.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
			mybatis.update("MemberDAO.updateMember", vo);
		}
		// 테스트용
		public List<MemberVO> getMemberList(int start, int end, MemberVO vo) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			map.put("member", vo);
			return mybatis.selectList("MemberDAO.getMemberList", map);
		}

		public int getCountMember(MemberVO vo) {
			return mybatis.selectOne("MemberDAO.getCountMember", vo);
		}
}
