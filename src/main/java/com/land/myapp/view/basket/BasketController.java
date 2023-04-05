  package com.land.myapp.view.basket;

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

import com.land.myapp.model.basket.BasketService;
import com.land.myapp.model.basket.BasketVO;
import com.land.myapp.model.goods.GoodsService;
import com.land.myapp.model.goods.GoodsVO;
import com.land.myapp.model.member.vo.GoodsPaymentVO;
import com.land.myapp.model.member.vo.MemberVO;

@Controller
public class BasketController {

	@Autowired
	private BasketService basketservice;
	

	// 장바구니 등록
	@RequestMapping("/insertBasket")
	// URL 경로 "/insertBasket"에 매핑된 메서드입니다.
	public String insertBasket(BasketVO vo) {
		// "BasketVO" 개체 "vo"를 매개 변수로 사용
		// 웹 페이지에서 Ajax 요청을 통해 호출
		basketservice.insertBasket(vo);
		// "basketservice" 개체에서 "vo"를 매개 변수로 전달하는 "insertBasket" 메서드를 호출하여 항목을 사용자의
		// 장바구니에 추가
		return "main";
		// "main"이라는 문자열 값을 반환
	}

	// 삭제
	@RequestMapping(value = "/delbasket", method = RequestMethod.GET)
	// "RequestMethod.GET" 매개변수를 사용하여 GET 요청을 처리하도록 설정
	public String deletebasket(BasketVO vo) {
		// 장바구니에 있는 항목의 고유 식별자를 나타내는 정수 변수 "goods_num"을 사용
		basketservice.deleteBasket(vo);
		// "basketservice" 개체에서 "deleteBasket" 메서드를 호출 "goods_num"을 매개 변수로 전달하여
		// 사용자의 장바구니에서 항목을 삭제
		System.out.println("데이터 삭제 됨");
		// ("데이터가 삭제되었습니다") 메시지를 콘솔에 출력
		return "redirect:/basketlist";
		// "redirect:/basket/basketlist" 문자열 값을 반환 "/basket/basketlist" URL 경로로
		// 리디렉션하여 사용자의 장바구니에 있는 항목의 업데이트된 목록을 표시
	}

	// 리스트 구현
	@RequestMapping(value = "/basketlist", method = RequestMethod.GET)
	// "RequestMethod.GET" 매개변수를 사용하여 GET 요청을 처리
	public String listbasket(Model model, BasketVO vo, HttpSession session, GoodsVO gvo) {
		// 멤버컨트롤러에서 로그인정보를 member 객체에 저장. 그 객체를 가져오고
		// 아이디를 뽑아온다.
		MemberVO member = (MemberVO) session.getAttribute("member");
		String member_id = member.getMember_id();
		vo.setMember_id(member_id);
		// "Model" 개체 "model" 및 "BasketVO" 개체 "vo"의 두 매개 변수를 사용
		model.addAttribute("basketList", basketservice.getBasketList(vo));
		// "basketservice" 객체에서 "vo"를 매개변수로 전달하는
		// "getBasketList" 메서드를 호출하여 사용자의 장바구니에 있는 항목 목록을 반환
		System.out.print("데이터 전송 됨");
		// ("데이터가 전송되었습니다") 메시지를 콘솔에 출력
		return "basket/basketlist";
		// "basket/basketlist" 문자열 값을 반환
	}



	// 상세
	@RequestMapping("/basket/get")
	public String getSelectOne(BasketVO vo, Model model) {
		// 정수 변수 "goods_num" 및 "모델" 개체 "model"의 두 매개 변수를 사용
		BasketVO basketvo = basketservice.getSelectOne(vo);
		// "basketservice" 개체에서 "getSelectOne" 메서드를 호출하여 바구니에서
		// 선택한 항목을 나타내는 "BasketVO" 개체 "basketvo"를 반환
		model.addAttribute("pageinfo", basketvo);
		return "/basket/get";
		// "model" 객체의 "pageinfo" 속성은 "basketvo"로 설정 "/basket/get" 문자열 값을 리턴
	}

	//굿즈  페이지 이동
			@RequestMapping(value="/goodsOrder")
			public String orderGoods() {
				return "/goods/Goods";
			}

			
			//주문 이동
			@PostMapping(value="/goodsPayment")
			public String orderGoods(GoodsPaymentVO vo, HttpSession session, GoodsVO gvo, String basket) {
				HashMap<String, Object> map = new HashMap<String,Object>();
				map.put("vo", vo);
				map.put("gvo", gvo);
				map.put("basket", basket);
				session.setAttribute("goods", map);
				return "/payment/goodsPayment";
			}
			
			@GetMapping(value="/goodsPayment")
			public String paymentGoods(GoodsPaymentVO vo) {
				return "/payment/goodsPayment";
			}

}
