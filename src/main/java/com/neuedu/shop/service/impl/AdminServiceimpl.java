package com.neuedu.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.shop.mapper.AdminMapper;
import com.neuedu.shop.pojo.Admin;
import com.neuedu.shop.service.AdminService;

@Service
@Transactional
public class AdminServiceimpl implements AdminService {

	/*
	 * 持有持久层接口的对象
	 */

	@Autowired // 自动注入 dependency injection
	private AdminMapper mapper;
	/*
	 * 在业务层中调用持久层中的结果
	 */

	@Override
	public List<Admin> findAll() {

		return mapper.findAll();
	}

}
