package com.aa.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.aa.bean.UserBean;
import com.aa.dao.UserBeanDAO;
import com.aa.model.User;






@Service("userbeanService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class UserBeanserviceimple implements UserBeanService{
	
	@Autowired
	private UserBeanDAO userBeanDAO;

	public int insertRow(UserBean use) {
		// TODO Auto-generated method stub
		return userBeanDAO.insertRow( use);
		 
	}

	public List getList() {
		// TODO Auto-generated method stub
		return userBeanDAO.getList();
	}

	public UserBean getRowById(int id) {
		// TODO Auto-generated method stub
		return  userBeanDAO.getRowById(id);
	}

	public int updateRow(UserBean use) {
		// TODO Auto-generated method stub
	return  userBeanDAO.updateRow(use);
	}

	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return  userBeanDAO.deleteRow(id);
	}

	/*@Override
	public User getRowById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateRow(User use) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	public int insertRow(UserBean use) {
		// TODO Auto-generated method stub
		return 0;
	}*/
}
