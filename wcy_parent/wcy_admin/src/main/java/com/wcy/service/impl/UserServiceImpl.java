package com.wcy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wcy.dao.UserDao;
import com.wcy.entity.User;
import com.wcy.service.UserService;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userMapper;

	@Override
	public List<User> getUser() {
		// TODO Auto-generated method stub
		return userMapper.getUser();
	}
}
