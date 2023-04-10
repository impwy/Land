package com.land.myapp.view.member;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.land.myapp.main.Pager;
import com.land.myapp.model.basket.Service.BasketService;
import com.land.myapp.model.basket.DTO.BasketDTO;
import com.land.myapp.main.PageHandler;
import com.land.myapp.main.SearchCondition;
import com.land.myapp.model.member.DTO.GoodsPaymentDTO;
import com.land.myapp.model.member.Service.MemberService;
import com.land.myapp.model.member.DTO.MemberDTO;

@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;
    @Autowired
    private BasketService basketService;

    // 로그인
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "member/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(MemberDTO vo, HttpSession session) {
        int memberCheck = memberService.checkMember(vo);
        MemberDTO member = memberService.login(vo);
        if (member != null) {
            session.setAttribute("member", member);
            return "main";
        } else {
            session.setAttribute("memberCheck", memberCheck);
            return "member/login";
        }
    }

    // 회원가입
    @RequestMapping(value = "/join", method = RequestMethod.POST)
    public String signUp(MemberDTO vo) {
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

    @PostMapping(value = "/checkID")
    @ResponseBody
    public int checkID(String member_id) {
        return memberService.checkID(member_id);
    }

    @PostMapping(value = "/checkMember")
    @ResponseBody
    public int checkMember(MemberDTO vo) {
        return memberService.checkMember(vo);
    }

    // 멤버 리스트
    @GetMapping("/getMemberList")
    public String getMemberList(MemberDTO mvo, Model m) {
        m.addAttribute("memberList", memberService.getMemberList(mvo));
        return "admin/memberManager";
    }

    // 멤버 삭제
    @PostMapping("/deleteMember")
    public String deleteMember(Integer member_no, RedirectAttributes rattr, String date) {
        try {
            int rowCnt = memberService.deleteMember(member_no);

            if (rowCnt != 1)
                throw new Exception("Member delete error");
            rattr.addFlashAttribute("msg", "DEL_OK");
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (date == "member_date") {
            return "redirect:/main";
        } else {
            return "redirect:/memberpage";
        }
    }

    // 멤버
    @GetMapping("/getMember")
	public String getMember(int member_no,Model m,SearchCondition sc) {
		m.addAttribute("member", memberService.getMember(member_no));
		m.addAttribute("sc",sc);

		return "admin/getMember";
	}

    // 회원 정보 수정 창 이동
    @RequestMapping(value = "/modifyMember", method = RequestMethod.GET)
    public String mypage4() {
        return "mypage/modifyMember";
    }

    // 회원 정보 수정
    @RequestMapping(value = "/modifyMember", method = RequestMethod.POST)
    public String updateMember(MemberDTO vo) {
        memberService.updateMember(vo);
        return "mypage/mypage";
    }

    // 회원 탈퇴
    @RequestMapping(value = "/deleteMember2", method = RequestMethod.GET)
    public String deleteMember2(String member_id) {
        memberService.dropMember(member_id);
        return "redirect:/main";
    }

    // 주문 내역 등록
    @PostMapping(value = "/payment")
    public String insertGoodsPayment(GoodsPaymentDTO vo, String basket, BasketDTO bvo) {
    	if(basket.equals("basket")) {
    		System.out.println(basket);
    	basketService.deleteCartPayment(bvo);
        memberService.insertGoodsPayment(vo);
        return "basket/basketlist";
    	}else {
    	memberService.insertGoodsPayment(vo);
    	return "main";
    	}
    }
    
    // 개인 정보 이동
    @GetMapping(value = "/mypage")
    public String getOrderList(@RequestParam(defaultValue = "1") int curPage, GoodsPaymentDTO vo, Model model,
                               HttpSession session) {

        MemberDTO member = (MemberDTO) session.getAttribute("member");
        String member_id = member.getMember_id();
        vo.setMember_id(member_id);
        int count = memberService.getCountOrder(vo);
        Pager pager = new Pager(count, curPage);
        int start = pager.getPageBegin();
        int end = pager.getPageEnd();
        List<GoodsPaymentDTO> list = memberService.getGoodsPaymentList(vo, start, end);

        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("list", list);
        map.put("count", count);
        map.put("pager", pager);
        model.addAttribute("map", map);
        return "mypage/mypage";
    }
    @GetMapping("/memberpage")
	public String getMemberPage(MemberDTO mvo, Model m, SearchCondition sc) {
		try {
			int totalCnt=memberService.getMemberCount(sc);
			m.addAttribute("totalCnt", totalCnt);
			PageHandler pageHandler = new PageHandler(totalCnt,sc);


			List<MemberDTO> list = memberService.getMemberPage(sc);
			m.addAttribute("memberList", list);
			m.addAttribute("ph", pageHandler);

		} catch (Exception e) {
			e.printStackTrace();
			m.addAttribute("msg", "LIST_ERR");
			m.addAttribute("totalCnt", 0);

		}
		return "admin/memberManager";
	}
}
