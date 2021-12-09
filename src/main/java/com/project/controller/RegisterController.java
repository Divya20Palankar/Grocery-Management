package com.project.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.Register;
import com.project.service.RegisterService;


@Controller
public class RegisterController {

	private static final Logger logger = Logger
			.getLogger(RegisterController.class);
	
	public RegisterController() {
		System.out.println("RegisterController()");
	}

	@Autowired
	private RegisterService registerService;
	
	@RequestMapping(value = "/")
	public ModelAndView listRegister(ModelAndView model) throws IOException {
		model.setViewName("index");
		return model;
	}
	@RequestMapping(value = "/register")
	public ModelAndView signup(ModelAndView model) throws IOException {
		model.setViewName("register");
		return model;
	}
	
	@RequestMapping(value = "/contact")
	public ModelAndView contact(ModelAndView model) throws IOException {
		model.setViewName("contact");
		return model;
	}
	
	
	@RequestMapping(value = "/admin")
	public ModelAndView admin(ModelAndView model) throws IOException {
		model.setViewName("adminproduct");
		return model;
	}
	
	
	@RequestMapping(value = "/payment_form")
	public ModelAndView payment_form(ModelAndView model) throws IOException {
		model.setViewName("payment_form");
		return model;
	}
	
	@RequestMapping(value = "/index")
	public ModelAndView pa(ModelAndView model) throws IOException {
		model.setViewName("index");
		return model;
	}
	
	@RequestMapping(value = "/customer_list")
	public ModelAndView listview(ModelAndView model) throws IOException {
		List<Register> listRegister = registerService.getAllRegisters();
		model.addObject("listRegister", listRegister);
		model.setViewName("customer_list");
		return model;
	}
	
	@RequestMapping(value = "/saveRegister", method = RequestMethod.POST)
	public ModelAndView saveRegister(@ModelAttribute Register register) {
		if (register.getId() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee
			registerService.addRegister(register);
		} else {
			registerService.updateRegister(register);
		}
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value = "/newRegister", method = RequestMethod.GET)
	public ModelAndView newContact(ModelAndView model) {
		Register register = new Register();
		model.addObject("register", register);
		model.setViewName("register_form");
		return model;
	}

	

	@RequestMapping(value = "/deleteRegister", method = RequestMethod.GET)
	public ModelAndView deleteRegister(HttpServletRequest request) {
		int registerId = Integer.parseInt(request.getParameter("id"));
		registerService.deleteRegister(registerId);
		return new ModelAndView("redirect:/customer_list");
	}

	@RequestMapping(value = "/editRegister", method = RequestMethod.GET)
	public ModelAndView editRegister(HttpServletRequest request) {
		int registerId = Integer.parseInt(request.getParameter("id"));
		Register register = registerService.getRegister(registerId);
		ModelAndView model = new ModelAndView("EmployeeForm");
		model.addObject("register", register);
		return model;
	}
}
