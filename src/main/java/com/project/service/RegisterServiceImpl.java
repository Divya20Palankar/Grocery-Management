package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.dao.RegisterDAO;
import com.project.model.Register;



@Service
@Transactional
public class RegisterServiceImpl implements RegisterService {
	
	@Autowired
	private RegisterDAO registerDAO;
	
	@Transactional
	public void addRegister(Register register) {
		// TODO Auto-generated method stub
		registerDAO.addRegister(register);
	}
	
	@Transactional
	public List<Register> getAllRegisters() {
		return registerDAO.getAllRegisters();
	}
	@Transactional
	public void deleteRegister(Integer registerId) {
		registerDAO.deleteRegister(registerId);	
	}

	public Register updateRegister(Register register) {
		return registerDAO.updateRegister(register);
	}

	public Register getRegister(int regid) {
		return registerDAO.getRegister(regid);
	}
	public void setRegisterDAO(RegisterDAO registerDAO) {
		this.registerDAO = registerDAO;
	}

}
