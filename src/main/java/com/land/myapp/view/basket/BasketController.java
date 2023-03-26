package com.land.myapp.view.basket;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.land.myapp.model.basket.BasketService;
import com.land.myapp.model.basket.BasketVO;

@Controller
public class BasketController {

	@Autowired
	private BasketService basketservice;

	/*@RequestMapping(value = "/aaa", method = RequestMethod.GET)
	public String insertbasket(BasketVO vo) {
		basketservice.insertBasket(vo);

		return "aaa";

	}*/

	/*@RequestMapping(value = "/aaa", method = RequestMethod.GET)
	public String deletebasket(BasketVO vo) {
		basketservice.deleteBasket(vo);

		return "aaa";
	}*/
	
	@RequestMapping(value = "/basketlsit", method = RequestMethod.GET)
	 public String listbasket(Model model) {
		model.addAttribute("basketList",basketservice.getBasketList());
		System.out.print("데이터 전송 됨");
	        return "basket/basketlsit";  
		}

}
