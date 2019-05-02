package com.nefuse.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nefu.domain.PageBean;
import com.nefu.service.NewsService;

/**
 * Servlet implementation class allnews
 */
@WebServlet("/allnews")
public class allnews extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		NewsService service = new NewsService();
		int pageSize = 10;
		int currentPage = 1;
		String currPage = request.getParameter("currentPage");
		if (currPage!=null) {
			currentPage = Integer.parseInt(currPage);
		}
		try {
			//List<news> list = service.getAllnews();
			//request.setAttribute("list",list);
			PageBean pb = service.findNewsPage(currentPage, pageSize);
			request.setAttribute("pb", pb);
			request.getRequestDispatcher("newscenter/index.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
