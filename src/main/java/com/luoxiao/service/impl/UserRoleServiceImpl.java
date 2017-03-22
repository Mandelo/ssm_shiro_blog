package com.luoxiao.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luoxiao.dao.UserDao;
import com.luoxiao.dao.UserRoleDao;
import com.luoxiao.model.UserRole;
import com.luoxiao.service.UserRoleService;

/**
 * @author losho
 * @date 2017年1月10日
 */
@Service
public class UserRoleServiceImpl implements UserRoleService{

	@Autowired
	private UserRoleDao userRoleDao;
	
	@Override
	public UserRole selectByUserId(Integer userId) {
		UserRole userRole = userRoleDao.selectByUserId(userId);
		return userRole;
	}

	@Override
	public void insert(UserRole record) {
		userRoleDao.insert(record);
	}

	@Override
	public void deleteById(Integer id) {
		userRoleDao.deleteById(id);
		
	}

}
