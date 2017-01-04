package com.aa.services;

import java.util.List;

import com.aa.model.Category;


public interface CategoryService {
	public int insertRow(Category cat/*,String s*/); 
	 public List getList();
	 public Category getRowById(int id);
	 public int updateRow(Category cat);
	 public int deleteRow(int id);

}
