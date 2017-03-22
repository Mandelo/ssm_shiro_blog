package com.luoxiao.dao;

import com.luoxiao.model.User;

public interface UserDao {

	int deleteById(Integer id);
	
	int insert(User record);
	
	int insertSelective(User record);
	
	User selectById(Integer id);
	
	User selectByUsername(String username);
	
	int updateByIdSelective(User record);
	
	int updateById(User record);
}
