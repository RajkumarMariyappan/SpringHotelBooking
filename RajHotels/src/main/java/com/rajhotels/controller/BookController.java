package com.rajhotels.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rajhotels.model.Book;
import com.rajhotels.model.User;
import com.rajhotels.service.BookService;

@Controller
public class BookController {
	@Autowired
	public BookService bookService;

	@RequestMapping(value = "/book", method = RequestMethod.GET)
	public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("book");
		mav.addObject("book", new Book());

		return mav;
	}

	@RequestMapping(value = "/bookProcess", method = RequestMethod.POST)
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("book") Book book , @ModelAttribute("user") User user) {

		bookService.register(book);
		bookService.update(book);

		return new ModelAndView("welcome");

	}
	
	@RequestMapping(value = "/userbooking", method = RequestMethod.GET)
	public ModelAndView showbookRegister(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("userbooking");
		//mav.addObject("book", new Book());
		return mav;
	}
	
	@RequestMapping(value = "/mybookProcess", method = RequestMethod.GET)
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response) {


		return new ModelAndView("Mybookings");

	}
}
