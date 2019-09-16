package com.yu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yu.mapper.UserMapper;
import com.yu.pojo.User;
import com.yu.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Resource
	UserMapper userMapper;
	 
	@Override
	public User userlogin(User user) {
		// TODO Auto-generated method stub
		return userMapper.userlogin(user);
	}

	@Override
	public User getUserDetail(Integer id) {
		// TODO Auto-generated method stub
		User user = userMapper.selectByPrimaryKey(id);
		return user;
	}


	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return userMapper.deleteByPrimaryKey(id);
	}

}
