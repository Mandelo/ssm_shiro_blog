package com.luoxiao.model;

/**
 * @author losho
 * @date 2017年1月10日
 */
public class Permission {

	private Integer id;
	
	private String permissionName;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPermissionName() {
		return permissionName;
	}

	public void setPermissionName(String permissionName) {
		this.permissionName = permissionName;
	}

	@Override
	public String toString() {
		return "Permission [id=" + id + ", permissionName=" + permissionName
				+ "]";
	}
	
	
	
}
