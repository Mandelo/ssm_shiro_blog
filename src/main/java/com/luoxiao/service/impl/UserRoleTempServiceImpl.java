package com.luoxiao.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luoxiao.dao.UserRoleTempDao;
import com.luoxiao.model.UserRoleTemp;
import com.luoxiao.service.UserRoleTempService;

@Service
public class UserRoleTempServiceImpl implements UserRoleTempService{

	@Autowired
	private UserRoleTempDao userRoleTempDao;
	
	@Override
	public UserRoleTemp getByUserId(Integer userId) {
		return userRoleTempDao.getByUserId(userId);
	}

}
