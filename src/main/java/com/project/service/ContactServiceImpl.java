package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.dao.ContactDAO;
import com.project.model.Contact;

@Service
@Transactional
public class ContactServiceImpl implements ContactService {
	@Autowired
	private ContactDAO contactDAO;
	
	@Transactional
	public void addContact(Contact contact) {
		contactDAO.addContact(contact);
		
	}
	@Transactional
	public List<Contact> getAllContacts() {
		return contactDAO.getAllContacts();
	}

	public void deleteContact(Integer contactId) {
		contactDAO.deleteContact(contactId);	
		
	}

	public Contact updateContact(Contact contact) {
		return contactDAO.updateContact(contact);
	}

	public Contact getContact(int conid) {
		return contactDAO.getContact(conid);
	}
	public void setContactDAO(ContactDAO contactDAO) {
		this.contactDAO = contactDAO;
	}
	

}
