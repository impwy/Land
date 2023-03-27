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

	/*
	 * @RequestMapping(value = "/aaa", method = RequestMethod.GET) public String
	 * insertbasket(BasketVO vo) { basketservice.insertBasket(vo);
	 * 
	 * return "aaa";
	 * 
	 * }
	 */

	@RequestMapping(value = "/aaa", method = RequestMethod.GET)
	public String deletebasket(BasketVO vo) {
		basketservice.deleteBasket(vo);

		return "aaa";
	}

	@RequestMapping(value = "/basket/basketlist", method = RequestMethod.GET)
	public String listbasket(Model model, BasketVO vo) {
		model.addAttribute("basketList", basketservice.getBasketList(vo));
		System.out.print("데이터 전송 됨");
		return "basket/basketlist";
	}

}
