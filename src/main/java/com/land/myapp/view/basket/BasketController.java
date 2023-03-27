package com.land.myapp.view.basket;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.land.myapp.model.basket.BasketService;
import com.land.myapp.model.basket.BasketVO;


@Controller
public class BasketController {

	@Autowired
	private BasketService basketservice;

	@RequestMapping("/insertBasket")
	public String insertBasket(BasketVO vo) {
		System.out.println("ajax성공");
		basketservice.insertBasket(vo);
		return "main";
	}

	@RequestMapping(value = "/delbasket", method = RequestMethod.GET)
	public String deletebasket(BasketVO vo) {
		basketservice.deleteBasket(vo);
		System.out.println("데이터 삭제 됨");
		return "basket/basketlist";
	}

	@RequestMapping(value = "/basket/basketlist", method = RequestMethod.GET)
	public String listbasket(Model model, BasketVO vo) {
		model.addAttribute("basketList", basketservice.getBasketList(vo));
		System.out.print("데이터 전송 됨");
		return "basket/basketlist";
	}
	/*@RequestMapping(value="/payment", method=RequestMethod.POST)
	public String payment(@RequestParam(value="hiddenbtn") String hidden, PaymentVO vo, HttpSession session, Model model) {
		System.out.println(hidden);
		} if (hidden.equals("cartpage")) {
			List<PaymentVO> list = paymentService.cartPaymentProduct(vo);
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("list", list);
//			map.put("hidden", hidden);
//			model.addAttribute("map", map);
			session.setAttribute("list", list);
		}
		return "member/payment";
	}
	
	// 결제목록 갱신
	@RequestMapping(value="/decopay")
	public String insertPayment(String[] prd_list, PaymentVO vo) {
		for(int i = 0; i < prd_list.length; i += 3) {
			vo.setPrd_id(prd_list[i]);
			vo.setPrd_opt(prd_list[i+1]);
			vo.setBuy_quantity(Integer.parseInt(prd_list[i+2]));
			System.out.println(vo.toString());
			paymentService.insertPayment(vo);
			paymentService.deleteCartPayment(vo);
		}
		return "main";
	}*/

}
