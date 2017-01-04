package com.aa.dao;

import java.util.List;

import com.aa.model.Supplier;



public interface SupplierDAO {
 public int insertRow(Supplier sup);

 public List getList();

 public Supplier getRowById(int id);

 public int updateRow(Supplier sup);

 public int deleteRow(int id);

}