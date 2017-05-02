package com.bridgelabz.todoapp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.bridgelabz.todoapp.model.User;
import com.bridgelabz.todoapp.service.serviceinterface.UserSerInter;
import com.bridgelabz.todoapp.validator.RegValidation;

@Controller
public class UserController {
	@Autowired
	RegValidation regValidation;

	@Autowired
	UserSerInter userSerInter;

	// first request comes here and checks if any user persent or not
	@RequestMapping(value = "/")
	public ModelAndView indexPage(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		if (user != null) {
			return new ModelAndView("redirect:/Homepage");
		} else {
			return new ModelAndView("loginPage");
		}
	}

	@RequestMapping(value = "signup")
	public ModelAndView displayRegispge() {
		return new ModelAndView("RegistrationPage");
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public ModelAndView registrationMethod(User user, BindingResult bindingResult) {
		// doing sessin invalidate otherwise it will add . ask sir
		regValidation.validate(user, bindingResult); // calling validate method
		if (bindingResult.hasErrors()) {

			return new ModelAndView("RegistrationPage");
		} else {
			boolean result = userSerInter.registration(user); // calling
																// registration
																// method

			if (result) {
				return new ModelAndView("redirect:/login");
			} else {
				String msg = "failed..! please fill again";
				return new ModelAndView("RegistrationPage", "msg", msg);
			}
		}
	}

	@RequestMapping(value = "/Home", method = RequestMethod.POST)
	public ModelAndView loginvalidation(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpServletRequest req, HttpServletResponse resp) {

		HttpSession session = req.getSession();

		try {
			User userId = userSerInter.login(email, password);
			if (userId != null) {
				session.setAttribute("user", userId);
				ModelAndView mo = new ModelAndView("redirect:/Homepage");
				return mo;
			} else {
				String msg = "email and password is not matching";
				return new ModelAndView("loginPage", "msg", msg);
			}

		} catch (Exception e) {
			String msg = "please signup ";
			return new ModelAndView("loginPage", "msg", msg);
		}
	}

	@RequestMapping(value = "login")
	public ModelAndView index() {
		return new ModelAndView("loginPage");
	}

	@RequestMapping(value = "logout")
	public ModelAndView logout(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
		if (session.getAttribute("user") != null) // checks if session existed
													// or not if session exist
													// then session will be
													// invalidated
		{
			session.invalidate();
			req.getSession();
			return new ModelAndView("loginPage");
		} else {
			return new ModelAndView("loginPage");
		}
	}

}
