package com.nefu.utils;

import java.sql.Connection;
import java.sql.SQLException;

public class ManagerThreadLocal {
	private static ThreadLocal<Connection> tl = new ThreadLocal<>();
	
	public static Connection getConnection()
	{
		Connection conn = tl.get();
		if (conn==null) {
			conn = C3P0Util.getConnection();
			tl.set(conn);
		}
		return conn;
	}
	
	//��ʼ����
	public static void startTransaction() {
		try {
			Connection conn = getConnection();
			conn.setAutoCommit(false);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	//�ύ����
	public static void commit() {
		try
		{
			getConnection().commit();
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	//�ع�����
	public static void rollback()
	{
		try {
			getConnection().rollback();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//�ر�����
	public static void close() {
		try {
			getConnection().close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		tl.remove();
	}
}
