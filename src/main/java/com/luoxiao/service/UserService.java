package com.luoxiao.service;

import com.luoxiao.model.User;

/**
 * @author luoxiao
 * @date 2017年1月16日
 */
public interface UserService {

	User selectById(Integer id);
	
	User selectByUsername(String username);
	
	void save(User user);
	
	boolean userIsExist(String username);
	
}
