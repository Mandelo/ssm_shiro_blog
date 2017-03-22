package com.luoxiao.model;

import java.util.List;

/**
 * @author luoxiao
 * @date 2017年1月14日
 */
public class UserRoleTemp {

	private Integer id;

	private String username;

	private List<String> roles;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public List<String> getRoles() {
		return roles;
	}

	public void setRoles(List<String> roles) {
		this.roles = roles;
	}

	@Override
	public String toString() {
		return "UserRoleTemp [id=" + id + ", username=" + username + ", roles="
				+ roles + "]";
	}

}
