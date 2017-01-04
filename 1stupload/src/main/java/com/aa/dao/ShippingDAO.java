package com.aa.dao;

import java.util.List;

import com.aa.model.Shipping;

public interface ShippingDAO {
 public int insertRow(Shipping ship);

 public List getList();

 public Shipping getRowById(int id);

 public int updateRow(Shipping ship);

 public int deleteRow(int id);

}