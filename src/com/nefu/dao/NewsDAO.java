package com.nefu.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.nefu.domain.news;
import com.nefu.utils.C3P0Util;
public class NewsDAO {
	public List<news> getAllnews() throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("select * from news", new BeanListHandler<news>(news.class));
		
	}
	/**
	 * 删除新闻
	 * @param id
	 * @throws Exception
	 */
	public news findNewsByID(int id) throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("select * from news where id = ?",new BeanHandler<news>(news.class),id);
	}
	
	/**
	 * 根据id删除新闻
	 * @param id
	 * @throws Exception
	 */
	public void deleteNewsByID(int id) throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		qr.update("delete from news where id = ?", id);
	}
	public void addNews(news n)throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		qr.update("insert into news(title,author,source,insertDate,content,catagory) values(?,?,?,?,?,?)",n.getTitle(),n.getAuthor(),n.getSource(),n.getInsertDate(),n.getContent(),n.getCatagory());
	}
	public int count() throws SQLException{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		long l = (Long)qr.query("select count(*) from news",new ScalarHandler(1));
		return (int)l;
	}
	/**
	 * 分页查找数据
	 * @param currentPage
	 * @param pageSize
	 * @return
	 * @throws SQLException
	 */
	public List<news> findnews(int currentPage,int pageSize) throws SQLException{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("select * from news ORDER BY insertDate DESC limit ?,?", new BeanListHandler<news>(news.class),(currentPage-1)*pageSize,pageSize);
	
	}
	public List<news> findAllDONGTAI() throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("select * from news where catagory = 2 order by insertDate desc", new BeanListHandler<news>(news.class));
	}
	
	public List<news> findAllGONGGAO() throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("select * from news where catagory = 1 order by insertDate desc", new BeanListHandler<news>(news.class));
	}
	
	public List<news> findAllJIANGZUO() throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("select * from news where catagory = 3 order by insertDate desc", new BeanListHandler<news>(news.class));
	}
	public List<news> findAllSHIXIJIUYE() throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("select * from news where catagory = 4 order by insertDate desc", new BeanListHandler<news>(news.class));
	}
	public List<news> findAllZHAOSHENG() throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("select * from news where catagory = 5 order by insertDate desc", new BeanListHandler<news>(news.class));
	}
	
	public List<news> findNewsByName(String name) throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("select * from news where title like ?", new BeanListHandler<news>(news.class),"%" + name + "%");
	}
	
	public int countDONGTAI() throws Exception{
			QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
			long l = (Long)qr.query("select count(*) from news where catagory=2",new ScalarHandler(1));
			return (int)l;
	}
	
	public int countJIANGZUO() throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		long l = (Long)qr.query("select count(*) from news where catagory=3",new ScalarHandler(1));
		return (int)l;
	}
	
	public int countZHAOSHENG() throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		long l = (Long)qr.query("select count(*) from news where catagory=5",new ScalarHandler(1));
		return (int)l;
	}
	
	public int countGONGGAO() throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		long l = (Long)qr.query("select count(*) from news where catagory=1",new ScalarHandler(1));
		return (int)l;
	}
	public int countSHIXIJIUYE() throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		long l = (Long)qr.query("select count(*) from news where catagory=4",new ScalarHandler(1));
		return (int)l;
	}
	
	public void updateNews(news n) throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		qr.update("update news set title=?,author=?,insertDate=?,catagory=?,content=? where id=?",n.getTitle(), n.getAuthor(),n.getInsertDate(),n.getCatagory(),n.getContent(),n.getId());
	}
}
