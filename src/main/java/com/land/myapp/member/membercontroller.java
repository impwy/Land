package com.land.myapp.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class membercontroller {

	
	@RequestMapping(value = "/time", method = RequestMethod.GET)
	public String time() {
		return "menu/time";
	}

	@RequestMapping(value = "/guide", method = RequestMethod.GET)
	public String guide() {
		return "menu/guide";
	}
	@RequestMapping(value = "/guidemap", method = RequestMethod.GET)
	public String guidemap() {
		return "menu/guidemap";
	}
	@RequestMapping(value = "/attraction", method = RequestMethod.GET)
	public String attraction() {
		return "enjoy/attraciton/attraction";
	}

	@RequestMapping(value = "/tExpress", method = RequestMethod.GET)
	public String tExpress() {
		return "enjoy/attraciton/t-texpress/t-express";
	}
	@RequestMapping(value = "/discount", method = RequestMethod.GET)
	public String discount() {
		return "menu/discount";
	}
	@RequestMapping(value = "/restaurant", method = RequestMethod.GET)
	public String restaurant() {
		return "menu/restaurant";
	}
	@RequestMapping(value = "/convenients", method = RequestMethod.GET)
	public String convenients() {
		return "menu/convenients";
	}
	@RequestMapping(value = "/price", method = RequestMethod.GET)
	public String price() {
		return "menu/price";
	}

	@RequestMapping(value ="/FAQ", method = RequestMethod.GET)
	private String FAQ() {
		return "faq/FAQ";
	}
	

}