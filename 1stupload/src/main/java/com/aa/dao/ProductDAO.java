package com.aa.dao;

import java.util.List;

import com.aa.model.Product;

public interface ProductDAO {
 public int insertRow(Product prod,String s);

 public List getList();

 public Product getRowById(int id);

 public int updateRow(Product prod);

 public int deleteRow(int id);
	public Product stockUp(int id);
	public Product updateStock(int id);

}