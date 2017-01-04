package com.aa.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.aa.model.Product;
import com.aa.services.CategoryService;
import com.aa.services.ProductService;
import com.aa.services.SupplierService;
import com.google.gson.Gson;


@Controller
public class addproductController {

	
	public addproductController() {
		// super();
		// TODO Auto-generated constructor stub
		System.out.println("product controller");
	}
	@Autowired
	ProductService productService;

	@Autowired
	CategoryService categoryService;
	
	@Autowired
	SupplierService supplierService;
	
	@RequestMapping("/addproduct")
	public ModelAndView gotoProduct(@ModelAttribute("prod") Product prod,Model m) {
		List ls = productService.getList();
		List ls1 = supplierService.getList();
		List ls2 = categoryService.getList();
		m.addAttribute("cList",ls2);
		m.addAttribute("sList",ls1);
		
		return new ModelAndView("addproduct","productList",ls);
	}

	@RequestMapping("/viewproduct")
	public @ResponseBody ModelAndView gotoPr(ModelMap m) {
		List<Product> productLt = productService.getList();
		Gson gson=new Gson();
		String st=gson.toJson(productLt);
		m.addAttribute("pdata",st);
		System.out.println("pdata"+st);
		return new ModelAndView("viewproduct");
	}
	
	@RequestMapping(value = "saveProduct", method = RequestMethod.POST)
	public ModelAndView getForm(@ModelAttribute("prod") Product prod,ModelMap m) 
	{
		
		MultipartFile file = prod.getFile(); 
		  String fileName = "";
		  
		  String image="";
		  if(!file.isEmpty())		 
		  {
			  try 
		  {
			  System.out.println("inside try");
		  fileName = file.getOriginalFilename();
			  byte[] filesize=file.getBytes();
			  BufferedOutputStream bout=new BufferedOutputStream(new FileOutputStream(new File("C:\\Users\\Dinesh\\workspace\\pendrive\\src\\main\\webapp\\resource\\images\\" + fileName)));
			   bout.write(filesize);
			   bout.close();
		   image="/resource/images/"+fileName;
		  // r.setAttribute("img",image);	
		   m.addAttribute("img",image);
		   System.out.println("upload success.."+image);
			  }			   catch (IOException e) {			   // TODO Auto-generated catch block
				  System.out.println("upload failed..");
			   e.printStackTrace();
			  }
			 
		  }
		  productService.insertRow(prod, image);
		List productLt = productService.getList();
		List ls2 = categoryService.getList();
		m.addAttribute("cList",ls2);
		return new ModelAndView("addproduct","productList",productLt);
	}
	
	@RequestMapping("/editPage")
	public ModelAndView gotoedit(@ModelAttribute("prod") Product prod,@RequestParam int id) {
		prod=productService.getRowById(id);
		List productLt = productService.getList();
		return new ModelAndView("editPage","ProductObject",prod);
		}
	
//	@RequestMapping("/updateproduct")
//	public ModelAndView gotoupdate(@ModelAttribute("prod") Product prod,@RequestParam int id) {
//		productService.updateRow(prod);
//		return new ModelAndView("redirect:editPage");
//		}


	// @RequestMapping("register")
	// public ModelAndView registerUser(@ModelAttribute Product product) {
	// productService.insertRow(product);
	// return new ModelAndView("redirect:list");
	// }

	@RequestMapping("list")
	public ModelAndView getList() {
		List productLt = productService.getList();
		return new ModelAndView("list", "ProductList", productLt);
	}

	@RequestMapping("deleteProduct")
	public ModelAndView deleteUser(@ModelAttribute("prod") Product prod,@RequestParam int id) {
		productService.deleteRow(id);
		List productLt = productService.getList();
		return new ModelAndView("addproduct","productList",productLt);
	}

//@RequestMapping("editProduct")
//public ModelAndView editUser(@ModelAttribute("prod") Product prod, @RequestParam int id) {
//	Product ProductObject = productService.getRowById(id);
//		List productList = productService.getList();
//	return new ModelAndView("editProduct", "ProductObject", ProductObject);
//	}

	@RequestMapping("updateProduct")
	public ModelAndView updateUser(@ModelAttribute("prod") Product prod) {
				productService.updateRow(prod);
		List productLt = productService.getList();
	return new ModelAndView("redirect:addproduct");
			}

}