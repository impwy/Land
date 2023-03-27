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
//	@RequestMapping(value = "/goodsmall", method = RequestMethod.GET)
//	public String goodsmall() {
//		return "menu/goodsmall";
//	}
	@RequestMapping(value = "/doll", method = RequestMethod.GET)
	public String doll() {
		return "menu/doll";
	}
	@RequestMapping(value = "/hairband", method = RequestMethod.GET)
	public String hairband() {
		return "menu/hairband";
	}
	@RequestMapping(value = "/hat", method = RequestMethod.GET)
	public String hat() {
		return "menu/hat";
	}
	@RequestMapping(value = "/toy", method = RequestMethod.GET)
	public String toy() {
		return "menu/toy";
	}
	@RequestMapping(value = "/costum", method = RequestMethod.GET)
	public String costum() {
		return "menu/costum";
	}
	@RequestMapping(value = "/souvenir", method = RequestMethod.GET)
	public String souvenir() {
		return "menu/souvenir";
	}
	@RequestMapping(value = "/cloth", method = RequestMethod.GET)
	public String cloth() {
		return "menu/cloth";
	}
	/*@RequestMapping(value = "/basket", method = RequestMethod.GET)
	public String basket() {
		return "basket/basket";
	}*/
	@RequestMapping(value ="/FAQ", method = RequestMethod.GET)
	private String FAQ() {
		return "faq/FAQ";
	}

}