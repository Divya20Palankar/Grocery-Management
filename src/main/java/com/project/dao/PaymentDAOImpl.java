package com.project.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.Payment;


@Repository
public class PaymentDAOImpl implements PaymentDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addPayment(Payment payment) {
		sessionFactory.getCurrentSession().save(payment);
	}

	@SuppressWarnings("unchecked")
	public List<Payment> getAllPayments() {
		return sessionFactory.getCurrentSession().createQuery("from Payment").list();
	}

	public void deletePayment(Integer paymentId) {
		Payment payment = (Payment) sessionFactory.getCurrentSession().load(Payment.class, paymentId);
		if (null != payment) {
			this.sessionFactory.getCurrentSession().delete(payment);
		}	
	}

	public Payment updatePayment(Payment payment) {
		sessionFactory.getCurrentSession().update(payment);
		return payment;
	}

	public Payment getPayment(int payid) {
		return (Payment) sessionFactory.getCurrentSession().get(Payment.class, payid);
	}

}
