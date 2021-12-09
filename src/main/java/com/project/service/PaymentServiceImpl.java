package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.dao.PaymentDAO;
import com.project.model.Payment;

@Service
@Transactional
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired
	private PaymentDAO paymentDAO;
	
	@Transactional
    public void addPayment(Payment payment) {
		// TODO Auto-generated method stub
		paymentDAO.addPayment(payment);
	}
	@Transactional
	public List<Payment> getAllPayments() {
		return paymentDAO.getAllPayments();
	}
	@Transactional
	public void deletePayment(Integer paymentId) {
		paymentDAO.deletePayment(paymentId);	
	}

	public Payment updatePayment(Payment payment) {
		return paymentDAO.updatePayment(payment);

	}
	public Payment getPayment(int payid) {
		return paymentDAO.getPayment(payid);
	}
	
	public void setPaymentDAO(PaymentDAO paymentDAO) {
		this.paymentDAO = paymentDAO;
	}

}
