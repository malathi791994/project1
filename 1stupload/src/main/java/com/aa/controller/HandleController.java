package com.aa.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.aa.model.Category;
import com.aa.model.Product;
import com.aa.model.Shipping;
import com.aa.services.CategoryService;
import com.aa.services.ProductService;
import com.aa.services.ShippingService;


@Controller
public class HandleController
{
	public HandleController()
	{
		System.out.println("welcome controller");

	}
	@Autowired
	ProductService productService;
	@Autowired
	ShippingService shippingService;
	@Autowired
	CategoryService categoryService;

	@RequestMapping("/")
	public String homepage(Model m)
	{
		List catLt=categoryService.getList();
		m.addAttribute("cList", catLt);
		return "index";
	}

	@RequestMapping("/index")
	public String gotoHome(HttpServletRequest req,Model m) {
		List catLt=categoryService.getList();
		m.addAttribute("cList", catLt);
		return "index";
	}
	@RequestMapping("/login")
	public String gotologin(@RequestParam(value="error",required = false) String error, @RequestParam(value="logout",required = false) String logout, Model model) 
	{
		
		if(error!=null)
		{
			model.addAttribute("error","Invalid credentials to enter");
		}
		if(logout!=null)
		{
			model.addAttribute("msg", "You logged out successfully...");
		}
		return  "login";
	}

	@RequestMapping(value = "/checklogin", method = RequestMethod.POST)
	
	public String validateLogin(HttpServletRequest req) {
		String u = req.getParameter("username");
		String pass = req.getParameter("password");

		if ((u.equals("malu")) && (pass.equals("malu"))) {
			return "edit";
		} else {
			return "newlogin";

		}
	}

	/*@RequestMapping("/page2")
	public String gotoabtus() {
		return "page2";
	}*/

	@RequestMapping("/page3")
	public String gotocategory() {
		return "page3";
	}
	@RequestMapping("/newlogin")
	public String gotoca() {
		return "newlogin";
	}
	/*@RequestMapping("categorypage")
	public ModelandView categorypage (@ModelAttribute("cat")category cat,@RequestParam int id,Model m)
	{
		List<Product> prodLt=productService.getList();
		List catLt=categoryService.getList();
		m.addAttribute("cList",catLt);
		List<Product> list2display=new ArrayList<Product>();
		for(Product p:prodLt)
		{
			if(p.getcid())==id)
{
	list2disp.add(p);
}
		}
		return new ModelandView("categorypage","Listprod",list2disp);
	}
*/
	@RequestMapping("/page4")
	public ModelAndView  gotoProduct(@ModelAttribute ("prod")Product prod,Model m)
	{
	
		
		List  <Product> prodLt=productService.getList();
	
	    List<Product> prods=new ArrayList<Product>();
	    for(Product p:prodLt)
	    {
	    	if(p.getQuantity()!=0)
	    	{
	    		prods.add(p);
	    	}
	    }
	    List<Category> catLt=categoryService.getList();
		m.addAttribute("cList", catLt);
		return new ModelAndView ("page4","Products",prods);
	}
	/*@RequestMapping("/page4")
	public String gotore() {
		return "page4";
	}*/
	@RequestMapping("/page5")
	public ModelAndView  gotoPr(@ModelAttribute ("cat")Category cat,@RequestParam int id,Model m)
	{
		List<Product> prodLt=productService.getList();
		List<Product> productList=new ArrayList<Product>();
	for(Product p:prodLt)
	{
		if((p.getCid()==id)&&(p.getQuantity()!=0))
		{
			productList.add(p);
		}
	}
	List catLt=categoryService.getList();
	m.addAttribute("cList", catLt);
		return new ModelAndView ("page5","Products",productList);
	}

	/*@RequestMapping("/page5")
	public String gotomodern() {
		return "page5";
	}*/
	
	@RequestMapping("/edit")
	public String gotomo() {
		return "edit";
	}

	
	@RequestMapping("home")
	public String home(){
		return "index1";
	}
	@RequestMapping("adminlogin")
	public String adminlogin(){
		return "adminlogin";
	}
	@RequestMapping("index1")
	public String ty(){
		return "index1";
	}
	@RequestMapping("newindex")
	public String sy(){
		return "newindex";
	}
	@RequestMapping("/thanks")
	public String gotoo(HttpServletRequest req) {
		return "thanks";
	}

	@RequestMapping("index2")
	public String tyg(){
		return "index2";
	}
	@RequestMapping("Shipping")
	public String s(@ModelAttribute("comd")Shipping comd){
		
		return "Shipping";
	}

}

