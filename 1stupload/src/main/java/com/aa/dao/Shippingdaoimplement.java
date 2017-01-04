package com.aa.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.aa.model.Shipping;



@Repository("shippingDAO")
public class Shippingdaoimplement implements ShippingDAO{

	@Autowired
	private SessionFactory sessionFactory;

	
	@Transactional(propagation=Propagation.SUPPORTS)
	 public int insertRow(Shipping p) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	 
	  session.saveOrUpdate(p);
	  tx.commit();
	  Serializable id = session.getIdentifier(p);
	  session.close();
	  return (Integer) id;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public List getList() {
	  Session session = sessionFactory.openSession();
	  @SuppressWarnings("unchecked")
	  List pList = session.createQuery("from Shipping").list();
	  session.close();
	  return pList;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public Shipping getRowById(int id) {
	  Session session = sessionFactory.openSession();
	  Shipping p = (Shipping) session.load(Shipping.class, id);
	  return p;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public int updateRow(Shipping p) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  
	  session.saveOrUpdate(p);
	  tx.commit();
	  Serializable id = session.getIdentifier(p);
	  session.close();
	  return (Integer) id;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  Shipping p = (Shipping) session.load(Shipping.class, id);
	  session.delete(p);
	  tx.commit();
	  Serializable ids = session.getIdentifier(p);
	  session.close();
	  return (Integer) ids;
	 }

	

	
}
