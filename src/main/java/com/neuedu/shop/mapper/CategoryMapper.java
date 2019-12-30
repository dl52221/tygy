package com.neuedu.shop.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.neuedu.shop.pojo.Category;

@Repository
public interface CategoryMapper {
	List<Category> findAll();
	 
	void addRootCategory(String name,String descr);

	List<Category> findToTree();
	
	void addChildCategory(Category category);
	
	int findByParentId(int pid);
	
	void updataParent(int pid);
	
	Category findById(int id);
}
