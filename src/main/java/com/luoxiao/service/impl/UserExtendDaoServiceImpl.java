package com.luoxiao.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luoxiao.dao.UserExtendDao;
import com.luoxiao.service.UserExtendService;
@Service
public class UserExtendDaoServiceImpl implements UserExtendService {

	@Autowired
	private UserExtendDao userExtendDao;
	
	@Override
	public List<String> getRoles(String username) {
		// TODO Auto-generated method stub
		return userExtendDao.getRoles(username);
	}

}
