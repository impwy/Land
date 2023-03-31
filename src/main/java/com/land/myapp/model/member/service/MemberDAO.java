package com.land.myapp.model.member.service;

import com.land.myapp.model.member.vo.GoodsPaymentVO;
import com.land.myapp.model.member.vo.MemberVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

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
		//회원 리스트
		public List<MemberVO> getMemberList(MemberVO vo) {
			return mybatis.selectList("MemberDAO.getMemberList", vo);
		}

	//구매 내역 조회
	public List<GoodsPaymentVO> getorderMember(GoodsPaymentVO vo) {
		
		return mybatis.selectList("MemberDAO.orderMember",vo);
	}

	//구매 갯수
	public int getCountOrder(GoodsPaymentVO vo) {
		return mybatis.selectOne("MemberDAO.CountOrder", vo);
	}

		//회원 삭제
		public int deleteMember(Integer member_no){
			return mybatis.delete("MemberDAO.deleteMember", member_no);
		}
		
		/*public int dropMember(String member_id) {
			return mybatis.delete("MemberDAO.dropMember", member_id);
		}
*/

		public int getCountMember(MemberVO vo) {
			return mybatis.selectOne("MemberDAO.getCountMember", vo);
		}
		public MemberVO getMember(int member_no){
			return mybatis.selectOne("MemberDAO.getMember",member_no);
		}

		public void dropMember(MemberVO vo) {
			System.out.println("dao로 넘어옴");
			mybatis.delete("MemberDAO.dropMember", vo);
			
		}

		//주문
		public void insertGoodsPayment(GoodsPaymentVO vo) {
		mybatis.insert("GoodsPaymentDAO.insertGoodsPayment",vo);
	}
		}
