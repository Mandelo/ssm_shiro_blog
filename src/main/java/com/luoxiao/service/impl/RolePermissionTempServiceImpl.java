package com.luoxiao.service.impl;

import org.springframework.stereotype.Service;

import com.luoxiao.dao.RolePermissionTempDao;
import com.luoxiao.model.RolePermissionTemp;
import com.luoxiao.service.RolePermissionTempService;

@Service
public class RolePermissionTempServiceImpl implements RolePermissionTempService {

	private RolePermissionTempDao rolePermissionTemp;

	@Override
	public RolePermissionTemp getByRoleId(Integer roleId) {
		
		return  rolePermissionTemp.getByRoleId(roleId);
	}

}
