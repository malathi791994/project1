package com.aa.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.aa.dao.ShippingDAO;
import com.aa.model.Shipping;


@Service("shippingService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class Shippingserviceimple implements ShippingService{
	
	@Autowired
	private ShippingDAO categroyDAO;

	public int insertRow(Shipping cat/*, String s*/) {
		// TODO Auto-generated method stub
		return categroyDAO.insertRow( cat/*,s*/);
		 
	}

	public List getList() {
		// TODO Auto-generated method stub
		return categroyDAO.getList();
	}

	public Shipping getRowById(int id) {
		// TODO Auto-generated method stub
		return  categroyDAO.getRowById(id);
	}

	public int updateRow(Shipping cat) {
		// TODO Auto-generated method stub
		return  categroyDAO.updateRow(cat);
	}

	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return  categroyDAO.deleteRow(id);
	}
	
}
