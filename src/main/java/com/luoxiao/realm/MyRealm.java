package com.luoxiao.realm;

import java.util.HashSet;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.luoxiao.dao.UserExtendDao;
import com.luoxiao.model.User;



public class MyRealm extends AuthorizingRealm {

	@Autowired
	private UserExtendDao userExtendDao;

	/**
	 * 登录之后用于授权
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		String username = (String) principals.getPrimaryPrincipal();
		SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
		authorizationInfo.setRoles(new HashSet<>(userExtendDao
				.getRoles(username)));
		authorizationInfo.setStringPermissions(new HashSet<>(userExtendDao
				.getPermissions(username)));
		return authorizationInfo;
	}

	/**
	 * 用于验证身份
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		String username = (String) token.getPrincipal();
		User user = userExtendDao.selectByUsername(username);
		if (null != user) {
			AuthenticationInfo info = new SimpleAuthenticationInfo(
					user.getUsername(), user.getPassword(), "xx");
			return info;
		}
		return null;
	}

}