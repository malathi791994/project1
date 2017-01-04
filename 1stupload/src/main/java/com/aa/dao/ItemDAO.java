package com.aa.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.aa.model.Item;


public interface ItemDAO {
	
	 public int insertRow(Item cat/*,String s*/);

	 public List getList();

	 public Item getRowById(int id);

	 public int updateRow(Item cat);

	 public int deleteRow(int id);
	 public Item updateQuantity(int id) ;


}
