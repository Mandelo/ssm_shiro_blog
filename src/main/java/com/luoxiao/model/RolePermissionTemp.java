package com.luoxiao.model;

import java.util.List;

public class RolePermissionTemp {

		private Integer id;
		
		private String rolename;
		
		private List<String> permissions;

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getRolename() {
			return rolename;
		}

		public void setRolename(String rolename) {
			this.rolename = rolename;
		}

		public List<String> getPermissions() {
			return permissions;
		}

		public void setPermissions(List<String> permissions) {
			this.permissions = permissions;
		}

		@Override
		public String toString() {
			return "RolePermissionTemp [id=" + id + ", rolename=" + rolename
					+ ", permissions=" + permissions + "]";
		}
		
		
	
}
