package com.nefu.service;

import com.nefu.dao.AdminDAO;
import com.nefu.domain.admin;

public class AdminService {
	private AdminDAO dao = new AdminDAO();
	public admin CheckLogin(String adminid,String adminpass) throws Exception{
		return dao.CheckLogin(adminid, adminpass);
	}
	
}
