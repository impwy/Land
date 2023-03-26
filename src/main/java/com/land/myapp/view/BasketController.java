package com.land.myapp.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.land.myapp.model.basket.BasketService;
import com.land.myapp.model.basket.BasketVO;

@Controller
public class BasketController {
	@Autowired
	private BasketService basketservice;
		
	@RequestMapping("/insertBasket")
	public String insertBasket(BasketVO vo) {
		System.out.println("ajax성공");
		basketservice.insertBasket(vo);;
		return "main";
	}
}
