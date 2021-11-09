package com.rajhotels.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.rajhotels.dao.UserDao;
import com.rajhotels.model.Login;
import com.rajhotels.model.User;

public class UserServiceImpl implements UserService {

  @Autowired
  public UserDao userDao;

  public int register(User user) {
    return userDao.register(user);
  }

  public User validateUser(Login login) {
    return userDao.validateUser(login);
  }

}
