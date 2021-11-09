package com.rajhotels.dao;

import com.rajhotels.model.Admin;
import com.rajhotels.model.AdminLogin;

public interface AdminDao {

	Admin validateAdmin(AdminLogin adminlogin);
}
