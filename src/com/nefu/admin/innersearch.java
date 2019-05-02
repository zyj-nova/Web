package com.nefu.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nefu.domain.news;
import com.nefu.service.NewsService;

/**
 * Servlet implementation class innersearch
 */
@WebServlet("/innersearch")
public class innersearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		try {
			String name = request.getParameter("search");
			System.out.println(name);
			NewsService service = new NewsService();
			List<news> lists = service.findNewsByName(name);
			request.setAttribute("lists", lists);
			System.out.println(lists.size());
			request.getRequestDispatcher("WEB-INF/admin/search_result.jsp").forward(request, response);
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
