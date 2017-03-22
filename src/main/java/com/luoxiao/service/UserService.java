package com.luoxiao.service;

import java.util.List;

import com.luoxiao.model.User;

/**
 * @author luoxiao
 * @date 2017年1月16日
 */
public interface UserService {
	List<User> selectAll();
	
	User selectById(Integer id);
	
	User selectByUsername(String username);
	
	void save(User user);
	
	boolean userIsExist(String username);
	
	void deleteById(Integer id);
}
