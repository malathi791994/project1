package com.aa.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.aa.dao.ItemDAO;
import com.aa.model.Item;


@Service("itemService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class Itemserviceimple implements ItemService{
	
	@Autowired
	private ItemDAO itemDAO;

	public int insertRow(Item cat/*, String s*/) {
		// TODO Auto-generated method stub
		return itemDAO.insertRow( cat/*,s*/);
		 
	}

	public List getList() {
		// TODO Auto-generated method stub
		return itemDAO.getList();
	}

	public Item getRowById(int id) {
		// TODO Auto-generated method stub
		return  itemDAO.getRowById(id);
	}

	public int updateRow(Item cat) {
		// TODO Auto-generated method stub
		return  itemDAO.updateRow(cat);
	}

	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return  itemDAO.deleteRow(id);
	}
	public Item updateQuantity(int id) {
		// TODO Auto-generated method stub
		return  itemDAO.updateQuantity(id);
	}
	
}
