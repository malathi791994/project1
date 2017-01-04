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
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.aa.model.Category;
import com.aa.services.CategoryService;
import com.google.gson.Gson;


@Controller
public class addcategoryController {

	@Autowired
	CategoryService categoryService;

	public addcategoryController() {
		// super();
		// TODO Auto-generated constructor stub
		System.out.println("category controller");
	}

	@RequestMapping("/addcategory")
	public ModelAndView gotoCategory(@ModelAttribute("cat") Category cat) {
		List categoryLt = categoryService.getList();
		return new ModelAndView("addcategory","cList",categoryLt);
	}

	@RequestMapping("/viewcategory")
	public @ResponseBody ModelAndView gotoPr(ModelMap m) {
		List<Category> categoryLt = categoryService.getList();
		Gson gson=new Gson();
		String st=gson.toJson(categoryLt);
		m.addAttribute("pdata",st);
		System.out.println("pdata"+st);
		return new ModelAndView("viewcategory");
	}
	
	@RequestMapping(value = "savecategory", method = RequestMethod.POST)
	public ModelAndView getForm(@ModelAttribute("cat")Category cat/*,ModelMap m*/) 
	{
		
		/*MultipartFile file = cat.getFile(); 
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
		  categoryService.insertRow(cat/*, image*/);
		List categoryLt = categoryService.getList();
		return new ModelAndView("addcategory","cList",categoryLt);
	}
	
	@RequestMapping("/editpagecat")
	public ModelAndView gotoedit(@ModelAttribute("cat") Category cat,@RequestParam int id) {
		cat=categoryService.getRowById(id);
		List categoryLt = categoryService.getList();
		return new ModelAndView("editpagecat","categoryObject",cat);
		}
	
//	@RequestMapping("/updateproduct")
//	public ModelAndView gotoupdate(@ModelAttribute("prod") Category prod,@RequestParam int id) {
//		categoryService.updateRow(prod);
//		return new ModelAndView("redirect:editPage");
//		}


	// @RequestMapping("register")
	// public ModelAndView registerUser(@ModelAttribute Category product) {
	// categoryService.insertRow(product);
	// return new ModelAndView("redirect:list");
	// }

	@RequestMapping("list1")
	public ModelAndView getList() {
		List productLt = categoryService.getList();
		return new ModelAndView("list", "CategoryList", productLt);
	}

	@RequestMapping("deletecategory")
	public ModelAndView deleteUser(@ModelAttribute("cat") Category cat,@RequestParam int id) {
		categoryService.deleteRow(id);
		List categoryLt = categoryService.getList();
		return new ModelAndView("addcategory","categoryList",categoryLt);
	}

//@RequestMapping("editCategory")
//public ModelAndView editUser(@ModelAttribute("prod") Category prod, @RequestParam int id) {
//	Category CategoryObject = categoryService.getRowById(id);
//		List productList = categoryService.getList();
//	return new ModelAndView("editCategory", "CategoryObject", CategoryObject);
//	}

	@RequestMapping("updatecategory")
	public ModelAndView updateUser(@ModelAttribute("cat") Category cat) {
		categoryService.updateRow(cat);
		List categoryLt = categoryService.getList();
	return new ModelAndView("redirect:addcategory");
			}

}
