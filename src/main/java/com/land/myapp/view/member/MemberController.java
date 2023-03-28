package com.land.myapp.view.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.land.myapp.model.member.vo.MemberService;
import com.land.myapp.model.member.vo.MemberVO;


@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/main")
	public String main() { return "main"; }

	@RequestMapping("/term")
	public String term(MemberVO vo) { return "member/term"; }

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signUpView(MemberVO vo) { return "member/signup"; }	

	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "member/login";
	}
	
		@RequestMapping(value = "/login", method = RequestMethod.POST)
		public String login(MemberVO vo, HttpSession session) {
			MemberVO member = memberService.login(vo);
			if (member != null) {
				session.setAttribute("member", member);		
				return "main";
			} else {
				return "member/login";
			}
		}
		// 회원가입
				@RequestMapping(value = "/join", method = RequestMethod.POST)
				public String signUp(MemberVO vo) {
					System.out.println("가입 성공....");
					memberService.insertMember(vo);
					return "main";
				}
		
		// 로그아웃
		@RequestMapping(value = "/logout", method = RequestMethod.GET)
		public String logout(HttpSession session) {
			session.invalidate();
			return "main";
		}
		
		@PostMapping(value="/checkID")
		@ResponseBody
		public int checkID(String member_id){
			return memberService.checkID(member_id);
		}
		
		@PostMapping(value="/checkMember")
		@ResponseBody
		public int checkMember(MemberVO vo) {
			return memberService.checkMember(vo);
		}
}
