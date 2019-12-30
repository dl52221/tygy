package com.neuedu.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.shop.mapper.CategoryMapper;
import com.neuedu.shop.pojo.Category;
import com.neuedu.shop.service.CategoryService;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	private CategoryMapper mapper;

	@Override
	public List<Category> findAll() {
		return mapper.findAll();
	}

	@Override
	public void addRootCategory(String name, String descr) {
		mapper.addRootCategory(name, descr);
	}

	@Override
	public List<Category> findToTree() {
		return mapper.findToTree();
	}

	@Override
	public void addChildCategory(String name, String descr, int pid) {
		int grade = mapper.findByParentId(pid);
		//添加操作
		mapper.addChildCategory(new Category(name, descr, pid, grade+1));
		mapper.updataParent(pid);
		
	}

	@Override
	public Category findById(int id) {
		
		return mapper.findById(id);
	}

}
