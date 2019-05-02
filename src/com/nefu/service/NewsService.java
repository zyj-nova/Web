package com.nefu.service;

import java.sql.SQLException;
import java.util.List;

import com.nefu.dao.NewsDAO;
import com.nefu.domain.PageBean;
import com.nefu.domain.news;

public class NewsService {
	private NewsDAO dao = new NewsDAO();

	public List<news> getAllnews() throws Exception {
		return dao.getAllnews();
	}

	public void deleteNewsByID(int id) throws Exception {
		dao.deleteNewsByID(id);
	}

	public void addNews(news n) throws Exception {
		dao.addNews(n);
	}

	public PageBean findNewsPage(int currentPage, int pageSize) throws SQLException {
		try {
			int count = dao.count();
			int totalPage = (int) Math.ceil(count * 1.0 / pageSize);
			List<news> news = dao.findnews(currentPage, pageSize);
			PageBean pb = new PageBean();
			pb.setCurrentPage(currentPage);
			pb.setList(news);
			pb.setCount(count);
			pb.setPageSize(pageSize);
			pb.setTotalPage(totalPage);
			return pb;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public news findNewsByID(int id) throws Exception {
		return dao.findNewsByID(id);
	}

	public List<news> findAllGONGGAO() throws Exception {
		return dao.findAllGONGGAO();
	}

	public List<news> findAllDONGTAI() throws Exception {
		return dao.findAllDONGTAI();
	}

	public List<news> findSHIXIJIUYE() throws Exception {
		return dao.findAllSHIXIJIUYE();
	}

	public List<news> findZHAOSHENG() throws Exception {
		return dao.findAllZHAOSHENG();
	}

	public List<news> findAllJIANGZUO() throws Exception {
		return dao.findAllJIANGZUO();
	}

	public List<news> findNewsByName(String name) throws Exception {
		return dao.findNewsByName(name);
	}

	public int countDONGTAI() throws Exception {
		return dao.countDONGTAI();
	}

	public int countJIANGZUO() throws Exception {
		return dao.countJIANGZUO();
	}

	public int countZHAOSHENG() throws Exception {
		return dao.countZHAOSHENG();
	}

	public int countGONGGAO() throws Exception {
		return dao.countGONGGAO();
	}

	public int countSHIXIJIUYE() throws Exception {
		return dao.countSHIXIJIUYE();
	}
	public void updateNews(news n) throws Exception{
		dao.updateNews(n);
	}
}
