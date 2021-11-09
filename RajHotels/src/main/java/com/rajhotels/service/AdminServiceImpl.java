package com.rajhotels.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.rajhotels.dao.AdminDao;
import com.rajhotels.model.Admin;
import com.rajhotels.model.AdminLogin;

public class AdminServiceImpl implements AdminService {

	@Autowired
	public AdminDao adminDao;

	public Admin validateAdmin(AdminLogin adminlogin) {
		return adminDao.validateAdmin(adminlogin);
	}

}
