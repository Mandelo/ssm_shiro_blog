package com.luoxiao.service;

import com.luoxiao.model.UserRole;

/**
 * @author losho
 * @date 2017年1月10日
 */
public interface UserRoleService {

	UserRole selectByUserId(Integer userId);
	
	int insert(UserRole record);
	
}
