package com.anderson.routing.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CounterController {

	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}

	@RequestMapping("/code")
	public String count(Model model, HttpSession session) {
		model.addAttribute("name", session.getAttribute("name"));
		model.addAttribute("dojo", session.getAttribute("dojo"));
		model.addAttribute("lang", session.getAttribute("lang"));
		model.addAttribute("comment", session.getAttribute("comment"));
		return "count.jsp";
	}

	@RequestMapping(value = "/passsubmit", method = RequestMethod.POST)
	public String pass(HttpSession session, @RequestParam(value = "name") String name,
			@RequestParam(value = "dojo") String dojo, @RequestParam(value = "lang") String lang,
			@RequestParam(value = "comment") String comment) {
		session.setAttribute("name", name);
		session.setAttribute("dojo", dojo);
		session.setAttribute("lang", lang);
		session.setAttribute("comment", comment);
		return "redirect:/code";
	}
}
