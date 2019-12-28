package com.neuedu.shop.service;

import java.util.List;

import com.neuedu.shop.pojo.Admin;

public interface AdminService {
	/*
	 * 查询t_admin表中所有数据
	 */
	List<Admin> findAll();
}
