package com.rajhotels.service;

import com.rajhotels.model.Login;
import com.rajhotels.model.User;

public interface UserService {

  int register(User user);

  User validateUser(Login login);
}
