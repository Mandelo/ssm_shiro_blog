package com.luoxiao.dao;

import java.util.List;

import com.luoxiao.model.User;

public interface UserExtendDao {

	User selectByUsername(String username);
	
	List<String> getRoles(String username);
	
	List<String> getPermissions(String username);
	
}
