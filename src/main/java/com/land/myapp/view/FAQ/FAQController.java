package com.land.myapp.view.FAQ;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.slf4j.Logger;
@Controller
public class FAQController {
	
	private static final Logger Logger = LoggerFactory.getLogger(FAQController.class);
	
	
	
	@RequestMapping(value ="/FAQ", method = RequestMethod.GET)
	private String FAQ() {
		return "faq/FAQ";
	}
}
