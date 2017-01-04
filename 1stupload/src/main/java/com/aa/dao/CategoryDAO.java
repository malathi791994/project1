package com.aa.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.aa.model.Category;


public interface CategoryDAO {
	
	 public int insertRow(Category cat/*,String s*/);

	 public List getList();

	 public Category getRowById(int id);

	 public int updateRow(Category cat);

	 public int deleteRow(int id);


}
