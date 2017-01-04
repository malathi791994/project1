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

import com.aa.model.Item;



@Repository("itemDAO")
public class Itemdaoimplement implements ItemDAO{

	@Autowired
	private SessionFactory sessionFactory;

	
	@Transactional(propagation=Propagation.SUPPORTS)
	 public int insertRow(Item p/*,String s*/) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  /*p.setImgs(s);*/
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
	  List pList = session.createQuery("from Item").list();
	  session.close();
	  return pList;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public Item getRowById(int id) {
	  Session session = sessionFactory.openSession();
	  Item p = (Item) session.load(Item.class, id);
	  return p;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public int updateRow(Item p) {
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
	  Item p = (Item) session.load(Item.class, id);
	  session.delete(p);
	  tx.commit();
	  Serializable ids = session.getIdentifier(p);
	  session.close();
	  return (Integer) ids;
	 }
	@Transactional(propagation=Propagation.SUPPORTS)
	 public Item updateQuantity(int id) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  Item p = (Item) session.load(Item.class, id);
	  p.setQuantity(p.getQuantity()+1);
	  session.saveOrUpdate(p);
	  tx.commit();
	  Serializable sid = session.getIdentifier(p);
	  session.close();
	  return p;
	 }

	}

	


