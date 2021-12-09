package com.project.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.Contact;

@Repository
public class ContactDAOImpl implements ContactDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addContact(Contact contact) {
		sessionFactory.getCurrentSession().save(contact);
	}

	@SuppressWarnings("unchecked")
	public List<Contact> getAllContacts() {
		return sessionFactory.getCurrentSession().createQuery("from Contact").list();
	}

	public void deleteContact(Integer contactId) {
		Contact contact = (Contact) sessionFactory.getCurrentSession().load(Contact.class, contactId);
		if (null != contact) {
			this.sessionFactory.getCurrentSession().delete(contact);
		}
	}

	public Contact updateContact(Contact contact) {
		sessionFactory.getCurrentSession().update(contact);
		return contact;
	}

	public Contact getContact(int conid) {
		return (Contact) sessionFactory.getCurrentSession().get(Contact.class, conid);
	}

}
