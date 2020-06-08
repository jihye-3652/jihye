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

		return "HOME";
	}

	@RequestMapping(value = "/HTMLTEST", method = RequestMethod.GET)
	public String HTMLTEST(Locale locale, Model model) {

		return "HTMLTEST";
	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {

		return "test";
	}

	@RequestMapping(value = "/BLOG", method = RequestMethod.GET)
	public String BLOG(Locale locale, Model model) {

		return "BLOG";
	}
	@RequestMapping(value = "/WEARE", method = RequestMethod.GET)
	public String WEARE(Locale locale, Model model) {

		return "WEARE";
	}
	@RequestMapping(value = "/WORK", method = RequestMethod.GET)
	public String WORK(Locale locale, Model model) {

		return "WORK";
	}
	@RequestMapping(value = "/CONTACTUS", method = RequestMethod.GET)
	public String CONTACTUS(Locale locale, Model model) {

		return "CONTACTUS";
	}
	@RequestMapping(value = "/test2", method = RequestMethod.GET)
	public String test2(Locale locale, Model model) {

		return "test2";
	}
	/*slide page*/
	@RequestMapping(value = "/slide", method = RequestMethod.GET)
	public String slide(Locale locale, Model model) {

		return "slide";
	}
	@RequestMapping(value = "/hh", method = RequestMethod.GET)
	public String hh(Locale locale, Model model) {

		return "hh";
	}
}