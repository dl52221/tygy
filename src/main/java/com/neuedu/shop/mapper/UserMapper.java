package com.neuedu.shop.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.neuedu.shop.pojo.User;

@Repository
public interface UserMapper {

	 List<User> findAll();
	
	/*
	 * 添加的方法
	 */
	 void insert(User user) ;
	 void delete(Integer id);
	 void resetPassword(Integer id);
}
