package com.land.myapp.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class membercontroller {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "member/login";
	}

	@RequestMapping(value = "/time", method = RequestMethod.GET)
	public String time() {
		return "menu/time";
	}
	@RequestMapping(value = "/guide", method = RequestMethod.GET)
	public String guide() {
		return "menu/guide";
	}

}