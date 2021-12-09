package com.project.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.Register;

@Repository
public class RegisterDAOImpl implements RegisterDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addRegister(Register register) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(register);
		
	}
	@SuppressWarnings("unchecked")
	public List<Register> getAllRegisters() {
		return sessionFactory.getCurrentSession().createQuery("from Register").list();
	}

	public void deleteRegister(Integer registerId) {
		Register register = (Register) sessionFactory.getCurrentSession().load(Register.class, registerId);
		if (null != register) {
			this.sessionFactory.getCurrentSession().delete(register);
		}	
	}

	public Register updateRegister(Register register) {
		sessionFactory.getCurrentSession().update(register);
		return register;
	}

	public Register getRegister(int regid) {
		return (Register) sessionFactory.getCurrentSession().get(Register.class, regid);
	}
	

}
