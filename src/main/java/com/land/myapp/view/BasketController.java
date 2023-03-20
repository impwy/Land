package com.land.myapp.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.land.myapp.model.basket.BasketService;

@Controller
public class BasketController {
	@Autowired
	private BasketService basketservice;

}
