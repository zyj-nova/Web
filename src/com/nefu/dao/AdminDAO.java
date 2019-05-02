package com.nefu.dao;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.nefu.domain.admin;
import com.nefu.utils.C3P0Util;

public class AdminDAO{
	public admin CheckLogin(String adminid,String adminpass) throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("select * from adminlist where adminid=? and adminpass = ?", new BeanHandler<admin>(admin.class),adminid,adminpass);
	}
}
