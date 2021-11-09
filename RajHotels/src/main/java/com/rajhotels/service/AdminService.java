package com.rajhotels.service;

import com.rajhotels.model.Admin;
import com.rajhotels.model.AdminLogin;

public interface AdminService {

 

  Admin validateAdmin(AdminLogin adminlogin);
}
