package com.neuedu.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neuedu.shop.pojo.Category;
import com.neuedu.shop.service.CategoryService;

@Controller
public class CategoryController {
	@Autowired
	private CategoryService service;
	@RequestMapping("/back/findAll.category")
	public String findAll(ModelMap map) {
		
		List<Category> categories = service.findAll();
		map.addAttribute("categories", categories);
		return "forward:category_list.jsp";
	}
	@RequestMapping("/back/addRoot.category")
	public String addRootCategory(String name,String descr) {
		service.addRootCategory(name,descr);
		return "redirect:findAll.category";
	}
	/*
	@RequestMapping("/back/findToTree.category")
	public String findToTree(ModelMap map) {
		List<Category> categories = service.findToTree();
		map.addAttribute("categories", categories);
		return "forward:category_list.jsp";
	}
	*/
	@ResponseBody
	@RequestMapping("/back/findToTree.category")
	public List<Category> findToTree(){
		return service.findToTree();
	}
	
	@RequestMapping("/back/addChild.category")
	public String addChildCategory(String name,String descr,int pid) {
		service.addChildCategory(name, descr, pid);
		return "redirect:category_list.jsp";
	}
	
	@RequestMapping("/back/findById.category")
	public String findById(int id,ModelMap map) {
		Category c = service.findById(id);
		map.addAttribute("c", c);
		return "forward:category_addchild.jsp";
		
	}
	
}
