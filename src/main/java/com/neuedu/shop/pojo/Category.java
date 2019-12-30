package com.neuedu.shop.pojo;

import java.io.Serializable;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Category implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String name;
	private String descr;
	private Integer pid;
	private boolean leaf;
	private Integer grade;
	/**
	 * 存放该类别子类别的容器
	 */
	private List<Category> children;
	public Category(String name, String descr, Integer pid, Integer grade) {
		super();
		this.name = name;
		this.descr = descr;
		this.pid = pid;
		this.grade = grade;
	}
	
	
	

}
