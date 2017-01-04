package com.aa.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.aa.dao.ProductDAO;
import com.aa.model.Product;



@Service("productService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class Productserviceimple implements ProductService{
	
	@Autowired
	private ProductDAO productDAO;

	public int insertRow(Product prod, String s) {
		// TODO Auto-generated method stub
		return productDAO.insertRow( prod,s);
		 
	}

	public List getList() {
		// TODO Auto-generated method stub
		return productDAO.getList();
	}

	public Product getRowById(int id) {
		// TODO Auto-generated method stub
		return  productDAO.getRowById(id);
	}

	public int updateRow(Product prod) {
		// TODO Auto-generated method stub
		return  productDAO.updateRow(prod);
	}

	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return  productDAO.deleteRow(id);
	}
	public Product stockUp(int id) {
		// TODO Auto-generated method stub
		return  productDAO.stockUp(id);
	}
	public Product updateStock(int id) {
		// TODO Auto-generated method stub
		return  productDAO.updateStock(id);
	}
	
}
	