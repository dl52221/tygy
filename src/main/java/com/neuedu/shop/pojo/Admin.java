package com.neuedu.shop.pojo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@NoArgsConstructor
@Data

public class Admin implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 3852903160004928467L;
	private Integer id;
	private String name;
	private String password;
	
}
