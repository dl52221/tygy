package com.neuedu.shop.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.neuedu.shop.pojo.Admin;

@Repository
public interface AdminMapper {

	/*
	 *  查询t_admin表中的所有数据
	 */
	List<Admin> findAll();
}
