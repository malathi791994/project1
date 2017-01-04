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

import com.aa.model.Supplier;
import com.aa.services.CategoryService;
import com.aa.services.SupplierService;
import com.google.gson.Gson;


@Controller
public class addsupplierController {

	@Autowired
	SupplierService SupplierService;
	
	@Autowired
	CategoryService categoryService;

	public addsupplierController() {
		// super();
		// TODO Auto-generated constructor stub
		System.out.println("Supplier controller");
	}

	@RequestMapping("/addsupplier")
	public ModelAndView gotoSupplier(@ModelAttribute("sup") Supplier sup,Model m) {
		List SupplierLt = SupplierService.getList();
		List catList=categoryService.getList();
		m.addAttribute("cList", catList);
		return new ModelAndView("addsupplier","SupplierList",SupplierLt);
	}

	@RequestMapping("/viewsupplier")
	public @ResponseBody ModelAndView gotoPr(ModelMap m) {
		List<Supplier> SupplierLt = SupplierService.getList();
		Gson gson=new Gson();
		String st=gson.toJson(SupplierLt);
		m.addAttribute("pdata",st);
		System.out.println("pdata"+st);
		return new ModelAndView("viewsupplier");
	}
	
	@RequestMapping(value = "saveSupplier", method = RequestMethod.POST)
	public ModelAndView getForm(@ModelAttribute("sup") Supplier sup) 
	{
		
		/*MultipartFile file = sup.getFile(); 
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
			 
		  }*/
		  SupplierService.insertRow(sup/*, image*/);
		List SupplierLt = SupplierService.getList();
		return new ModelAndView("addsupplier","SupplierList",SupplierLt);
	}
	
	@RequestMapping("/editpagesup")
	public ModelAndView gotoedit(@ModelAttribute("sup") Supplier sup,@RequestParam int id) {
		sup=SupplierService.getRowById(id);
		List SupplierLt = SupplierService.getList();
		return new ModelAndView("editpagesup","SupplierObject",sup);
		}
	
//	@RequestMapping("/updateSupplier")
//	public ModelAndView gotoupdate(@ModelAttribute("sup") Supplier sup,@RequestParam int id) {
//		SupplierService.updateRow(sup);
//		return new ModelAndView("redirect:editPage");
//		}


	// @RequestMapping("register")
	// public ModelAndView registerUser(@ModelAttribute Supplier Supplier) {
	// SupplierService.insertRow(Supplier);
	// return new ModelAndView("redirect:list");
	// }

	@RequestMapping("list3")
	public ModelAndView getList() {
		List SupplierLt = SupplierService.getList();
		return new ModelAndView("list", "SupplierList", SupplierLt);
	}

	@RequestMapping("deleteSupplier")
	public ModelAndView deleteUser(@ModelAttribute("sup") Supplier sup,@RequestParam int id) {
		SupplierService.deleteRow(id);
		List SupplierLt = SupplierService.getList();
		return new ModelAndView("addsupplier","SupplierList",SupplierLt);
	}

//@RequestMapping("editSupplier")
//public ModelAndView editUser(@ModelAttribute("sup") Supplier sup, @RequestParam int id) {
//	Supplier SupplierObject = SupplierService.getRowById(id);
//		List SupplierList = SupplierService.getList();
//	return new ModelAndView("editSupplier", "SupplierObject", SupplierObject);
//	}

	@RequestMapping("updateSupplier")
	public ModelAndView updateUser(@ModelAttribute("sup") Supplier sup) {
		SupplierService.updateRow(sup);
		List SupplierLt = SupplierService.getList();
	return new ModelAndView("redirect:addsupplier");
			}

}