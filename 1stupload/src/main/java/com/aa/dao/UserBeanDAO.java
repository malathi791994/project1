package com.aa.dao;

import java.util.List;

import com.aa.bean.UserBean;



public interface UserBeanDAO {
 public int insertRow(UserBean use);

 public List getList();

 public UserBean getRowById(int id);

 public int updateRow(UserBean use);

 public int deleteRow(int id);

}