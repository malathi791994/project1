package com.aa.services;

import java.util.List;

import com.aa.model.Item;


public interface ItemService {
	public int insertRow(Item cat/*,String s*/); 
	 public List getList();
	 public Item getRowById(int id);
	 public int updateRow(Item cat);
	 public int deleteRow(int id);
	 public Item updateQuantity(int id) ;

}
