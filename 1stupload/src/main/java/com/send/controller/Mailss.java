package com.send.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aa.bean.UserBean;
import com.aa.controller.CartController;
import com.aa.model.Item;
import com.aa.services.ItemService;
import com.aa.services.UserBeanService;

@Controller
public class Mailss {
	
	@Autowired
	private JavaMailSender mailSender;
	@Autowired 
	UserBeanService userBeanService;
    @Autowired
    ItemService itemService;
    @Autowired
    CartController ca;
	public Mailss() {
//		super();
		// TODO Auto-generated constructor stub
		System.out.println("send controller");
	}

	@RequestMapping("/EmailForm")
	public String gotoHome(Model m)
	{
		String username=ca.username;
		List<UserBean> userLt=userBeanService.getList();
		List<Item> itemLt=itemService.getList();
		List<Item> items=new ArrayList<Item>(); 
		for(UserBean u:userLt)
		{
			if(u.getUserName().equals(username))
			{
				m.addAttribute("email",u.getEmailId() );
				break;
			}
		}
		for(Item i:itemLt)
		{
		if(i.getUserId().equals(username))
		{
			items.add(i);
		}
		}
		m.addAttribute("cart", items);
	
		return "EmailForm";
	}
	
	@RequestMapping(value="/sendEmail", method = RequestMethod.POST)
	public String doSendEmail(HttpServletRequest request) {
		// takes input from e-mail form
		String recipientAddress = request.getParameter("recipient");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		String from = "rmdmalathi@gmail.com";
		
		// prints debug info
		System.out.println("To: " + recipientAddress);
		System.out.println("Subject: " + subject);
		System.out.println("Message: " + message);
		
		// creates a simple e-mail object
		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(recipientAddress);
		email.setSubject(subject);
		email.setText(message);
		
		// sends the e-mail
		mailSender.send(email);
		
		// forwards to the view named "Result"
		return "Result";
	}
}