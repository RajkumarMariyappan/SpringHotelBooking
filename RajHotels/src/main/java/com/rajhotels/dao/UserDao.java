package com.rajhotels.dao;

import com.rajhotels.model.Login;
import com.rajhotels.model.User;

public interface UserDao {

  int register(User user);

  User validateUser(Login login);
}
