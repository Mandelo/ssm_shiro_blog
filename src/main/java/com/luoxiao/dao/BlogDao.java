package com.luoxiao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.luoxiao.model.Blog;

/**
 * @author luoxiao
 * @date 2017年2月9日
 */
public interface BlogDao {
	//提交博客
	void insertBlog(Blog blog);
	
	void deleteById(Integer id);
	
	Blog selectById(Integer id);
	
	//根据用户ID获取博客列表
	List<Blog> selectAllByUserId(@Param("userId")Integer userId,@Param("page")int page,@Param("rows")int rows);
	
	//搜索博客
	List<Blog> selectByKeyword(@Param("keyword")String keyword,@Param("page")int page,@Param("rows")int rows);

	//所有博客
	List<Blog> selectAllBlog(@Param("page")int page,@Param("rows")int rows);
}
