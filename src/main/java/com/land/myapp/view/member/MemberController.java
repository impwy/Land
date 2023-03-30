package com.land.myapp.view.member;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.land.myapp.model.goods_payment.GoodsPaymentVO;
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
		
		//마이페이지,굿즈주문내역,티켓예매내역 선택창 이동
		@RequestMapping("/mypage")
		public String mypage() {
			return	"mypage/mypage";
		}
		//굿즈 주문 내역 페이지 이동
		@RequestMapping("/mypage2")
		public String mypage2() {
			return "mypage/mypage2";
		}
		
		//굿즈 주문 내역 조회
		@RequestMapping(value="/mypage2" ,method=RequestMethod.GET)
		public String getOrderList(GoodsPaymentVO vo, HttpSession session) {
			int count = memberService.getCountOrder(vo);
			MemberVO member = (MemberVO) session.getAttribute("member");
			List<GoodsPaymentVO> list = memberService.getorderMember(vo);
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("list", list);
			map.put("count",count);
			map.put("member", member);
			session.setAttribute("map", map);
			return "mypage/mypage2";
		}
		
		//회원 정보 수정 창 이동 
		@RequestMapping(value="/mypage3", method = RequestMethod.GET)
		public String mypage4() {
			return "mypage/mypage3";
		}
		
		//회원 정보 수정
		@RequestMapping(value="/mypage3",method = RequestMethod.POST)
		public String updateMember(MemberVO vo) {
			memberService.updateMember(vo);
			return "mypage/mypage";
		}
		
		//회원 정보 탈퇴 페이지로 이동
		@RequestMapping(value="/delete", method = RequestMethod.GET)
		public String mypage3() {
			return "mypage/delete";
		}
		
		//회원 탈퇴
		@RequestMapping(value="/delete", method = RequestMethod.POST)
		public String deleteMember(MemberVO vo, HttpSession session , RedirectAttributes rttr) {
			//세션에 있는 member를 가져와 member변수에 넣어준다
			MemberVO member = (MemberVO) session.getAttribute("member");
			
			//세션에 있는 비밀번호
			String sessionPwd = member.getMember_pwd();
			
			//vo로 들어오는 비밀번호
			String voPwd = vo.getMember_pwd();
			
			if(!(sessionPwd.equals(voPwd))) {
				rttr.addFlashAttribute("msg", false);
				return " redirect:/mypage/delete";
			}
			memberService.deleteMember(vo);
			session.invalidate();
			return "mypage/main";
		}
}
