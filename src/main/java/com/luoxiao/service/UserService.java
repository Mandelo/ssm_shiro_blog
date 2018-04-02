package com.luoxiao.service;

import com.luoxiao.model.User;

import java.util.List;

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

	void blockUserById(Integer id);

	void unblockUserById(Integer id);
}
