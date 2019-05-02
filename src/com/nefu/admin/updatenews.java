package com.nefu.admin;

import java.io.IOException;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nefu.domain.news;
import com.nefu.service.NewsService;

/**
 * Servlet implementation class updatenews
 */
@WebServlet("/updatenews")
public class updatenews extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		try {
			news n = new news();
			NewsService service = new NewsService();
			String author = request.getParameter("author");
			String title  = request.getParameter("title");
			String insertDate = request.getParameter("insertDate");
			String content = request.getParameter("content");
			int id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			int catagory = Integer.parseInt(request.getParameter("catagory"));
			DateFormat dft = new SimpleDateFormat("yyyy-MM-dd");
			Date date = dft.parse(insertDate);
			n.setAuthor(author);
			n.setCatagory(catagory);
			n.setTitle(title);
			n.setInsertDate(date);
			n.setContent(content);
			n.setId(id);
			service.updateNews(n);
			request.getRequestDispatcher("newsadmin").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
