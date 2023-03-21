package com.land.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "main";

	}
	@RequestMapping(value = "/myapp/login", method = RequestMethod.GET)
	public String login() {
		return "/member/login";

	}
	//티켓예매 페이지로 이동
	@RequestMapping("/ticket")
	public String ticket() {
		return "/ticket/ticketMain";
	}
	//allDayTicket이동
	@RequestMapping("/allDayTicket")
	public String allDayTicket() {
		return "ticket/allDayTicket";
	}
	//after4Ticket이동
	@RequestMapping("/after4Ticket")
	public String after4Ticket() {
		return "ticket/after4Ticket";
	}
	//굿즈몰로 이동
}
