package com.aa.services;

import java.util.List;

import com.aa.bean.UserBean;
import com.aa.model.User;

public interface UserBeanService {
	public int insertRow(UserBean userBean); 
	 public List getList();
	 public UserBean getRowById(int id);
	 public int updateRow(UserBean use);
	 public int deleteRow(int id);
}
