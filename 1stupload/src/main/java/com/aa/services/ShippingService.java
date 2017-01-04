package com.aa.services;

import java.util.List;

import com.aa.model.Shipping;


public interface ShippingService {
	public int insertRow(Shipping cat/*,String s*/); 
	 public List getList();
	 public Shipping getRowById(int id);
	 public int updateRow(Shipping cat);
	 public int deleteRow(int id);

}
