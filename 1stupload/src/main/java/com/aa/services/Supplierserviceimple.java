package com.aa.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.aa.dao.SupplierDAO;
import com.aa.model.Product;
import com.aa.model.Supplier;
import com.aa.model.Supplier;



@Service("SupplierService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class Supplierserviceimple implements SupplierService{
	
	@Autowired
	private SupplierDAO supplierDAO;

	public int insertRow(Supplier sup) {
		// TODO Auto-generated method
		return supplierDAO.insertRow( sup);
		 
	}

	public List getList() {
		// TODO Auto-generated method stub
		return supplierDAO.getList();
	}

	public Supplier getRowById(int id) {
		// TODO Auto-generated method stub
		return  supplierDAO.getRowById(id);
	}

	public int updateRow(Supplier sup) {
		// TODO Auto-generated method stub
		return  supplierDAO.updateRow(sup);
	}

	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return  supplierDAO.deleteRow(id);
	}

/*	@Override
	public int insertRow(Product prod, String s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Product getRowById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateRow(Product prod) {
		// TODO Auto-generated method stub
		return 0;
	}*/

	/*@Override
	public int insertRow(Supplier sup, String s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Supplier getRowById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateRow(Supplier sup) {
		// TODO Auto-generated method stub
		return 0;
	}
	*/
}
