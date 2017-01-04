package com.aa.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.aa.bean.UserBean;
import com.aa.services.UserBeanService;

@Component
public class Demohandler {

	@Autowired
	UserBeanService userbeanService;

	public UserBean initFlow() {
		return new UserBean();
	}

	public String validateDetails(UserBean userBean, MessageContext messageContext) {
		String status = "success";
		
		if(userBean.getPassword().equals(userBean.getConfirmpassword()))
		{
			status="success";
		}
		else
		{
			messageContext.addMessage(new MessageBuilder().error().source(
					"confirmpassword").defaultText("Password doesnot match..").build());
			status="failure";
		}
		
		if (userBean.getUserName().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("userName").defaultText("UserName cannot be Empty").build());
			status = "failure";
		}
		if (userBean.getEmailId().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("emailId").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if (userBean.getPassword().isEmpty()) {
			messageContext
					.addMessage(new MessageBuilder().error().source("password").defaultText("Password cannot be Empty").build());
			status = "failure";
		}
		if (userBean.getConfirmpassword().isEmpty()) {
			messageContext
					.addMessage(new MessageBuilder().error().source("confirmpassword").defaultText("password cannot be Empty").build());
			status = "failure";
		}
		
		List<UserBean> usrLt=userbeanService.getList();
		for(UserBean usr:usrLt)
		{
			if(userBean.getUserName().equals(usr.getUserName()))
			{
				messageContext.addMessage(new MessageBuilder().error().source(
						"userName").defaultText("UserName already exists..").build());
				status="failure";
			}
		}
		
		if (status.equals("success")) {
			userbeanService.insertRow(userBean);
		}
		return status;
	}
}
