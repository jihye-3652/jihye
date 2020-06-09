package org.edu.controller;

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

		return "home";
	}

	@RequestMapping(value = "/sample/HTMLTEST", method = RequestMethod.GET)
	public String HTMLTEST(Locale locale, Model model) {

		return "sample/HTMLTEST";
	}
	/**
	 * 샘플 파일 홈 
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/sample/", method = RequestMethod.GET)
	public String sample(Locale locale, Model model) {

		return "sample/HOME";
	}

	@RequestMapping(value = "/sample/test", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {

		return "sample/test";
	}

	@RequestMapping(value = "/sample/BLOG", method = RequestMethod.GET)
	public String BLOG(Locale locale, Model model) {

		return "sample/BLOG";
	}
	@RequestMapping(value = "/sample/WEARE", method = RequestMethod.GET)
	public String WEARE(Locale locale, Model model) {

		return "sample/WEARE";
	}
	@RequestMapping(value = "/sample/WORK", method = RequestMethod.GET)
	public String WORK(Locale locale, Model model) {

		return "sample/WORK";
	}
	@RequestMapping(value = "/sample/CONTACTUS", method = RequestMethod.GET)
	public String CONTACTUS(Locale locale, Model model) {

		return "sample/CONTACTUS";
	}
	@RequestMapping(value = "/sample/test2", method = RequestMethod.GET)
	public String test2(Locale locale, Model model) {

		return "sample/test2";
	}
	/*slide page*/
	@RequestMapping(value = "/sample/slide", method = RequestMethod.GET)
	public String slide(Locale locale, Model model) {

		return "sample/slide";
	}
	@RequestMapping(value = "/sample/hh", method = RequestMethod.GET)
	public String hh(Locale locale, Model model) {

		return "sample/hh";
	}
	
}