package com.luoxiao.service.impl;

import com.luoxiao.dao.BlogDao;
import com.luoxiao.model.Blog;
import com.luoxiao.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class BlogServiceImpl implements BlogService{

	@Autowired
	private BlogDao blogDao;

	@Override
	@Transactional 
	public void insert(Blog blog) {
		blogDao.insertBlog(blog);
		
	}

	@Override
	public List<Blog> selectAllbyUserId(Integer userId,Integer page,Integer rows) {
		return blogDao.selectAllByUserId(userId,page,rows);
	}

	@Override
	public List<Blog> selectByKeyword(String keyword, Integer page, Integer rows) {
		return blogDao.selectByKeyword(keyword, page, rows);
	}

	@Override
	public Blog selectById(Integer id) {
		return blogDao.selectById(id);
	}

	@Override
	public void deleteById(Integer id) {
		blogDao.deleteById(id);
		
	}

	@Override
	public List<Blog> selectAllBlog(Integer page, Integer rows) {
		return blogDao.selectAllBlog(page,rows);
	}
}
