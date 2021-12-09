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

import com.project.model.Payment;
import com.project.service.PaymentService;


@Controller
public class PaymentController {
	private static final Logger logger = Logger
			.getLogger(PaymentController.class);
	
	public PaymentController() {
		System.out.println("RegisterController()");
	}

	@Autowired
	private PaymentService paymentService;
	
	
	@RequestMapping(value = "/listPayment")
	public ModelAndView listPayment(ModelAndView model) throws IOException {
		List<Payment> listPayment = paymentService.getAllPayments();
		model.addObject("listPayment", listPayment);
		model.setViewName("list_payment");
		return model;
	}
	
	
	@RequestMapping(value = "/savePayment", method = RequestMethod.POST)
	public ModelAndView savePayment(@ModelAttribute Payment payment) {
		if (payment.getId() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee
			paymentService.addPayment(payment);
		} else {
			paymentService.updatePayment(payment);
		}		
		return new ModelAndView("redirect:/user");
	}
	
	@RequestMapping(value = "/newPayment", method = RequestMethod.GET)
	public ModelAndView newPayment(ModelAndView model) {
		Payment payment = new Payment();
		model.addObject("payment", payment);
		model.setViewName("payment_form");
		return model;
	}

	@RequestMapping(value = "/deletePayment", method = RequestMethod.GET)
	public ModelAndView deletePayment(HttpServletRequest request) {
		int paymentId = Integer.parseInt(request.getParameter("id"));
		paymentService.deletePayment(paymentId);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/editPayment", method = RequestMethod.GET)
	public ModelAndView editPayment(HttpServletRequest request) {
		int paymentId = Integer.parseInt(request.getParameter("id"));
		Payment payment = paymentService.getPayment(paymentId);
		ModelAndView model = new ModelAndView("edit_payment");
		model.addObject("register", payment);
		return model;
	}
}
