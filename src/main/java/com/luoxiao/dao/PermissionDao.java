package com.luoxiao.dao;

import com.luoxiao.model.Permission;

/**
 * @author losho
 * @date 2017年1月10日
 */
public interface PermissionDao {

	int deleteById(Integer id);
	
	int insert(Permission record);
	
	int insertSelective(Permission record);
	
	Permission selectById(Integer id);
	
	int updateByIdSelective(Permission record);
	
	int updateById(Permission record);
	
}
