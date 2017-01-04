package com.aa.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.aa.dao.CategoryDAO;
import com.aa.model.Category;


@Service("categoryService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class Categoryserviceimple implements CategoryService{
	
	@Autowired
	private CategoryDAO categroyDAO;

	public int insertRow(Category cat/*, String s*/) {
		// TODO Auto-generated method stub
		return categroyDAO.insertRow( cat/*,s*/);
		 
	}

	public List getList() {
		// TODO Auto-generated method stub
		return categroyDAO.getList();
	}

	public Category getRowById(int id) {
		// TODO Auto-generated method stub
		return  categroyDAO.getRowById(id);
	}

	public int updateRow(Category cat) {
		// TODO Auto-generated method stub
		return  categroyDAO.updateRow(cat);
	}

	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return  categroyDAO.deleteRow(id);
	}
	
}
