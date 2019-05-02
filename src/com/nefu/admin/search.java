package com.nefu.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import com.nefu.domain.news;
import com.nefu.service.NewsService;

/**
 * Servlet implementation class search
 */
@WebServlet("/search")
public class search extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		NewsService service = new NewsService();
		try {
			String name = request.getParameter("name");
			List<news> list = service.findNewsByName(name);
			//System.out.println(list.size());
			if (list.size() == 0) {
				request.getRequestDispatcher("jsp/no_result.jsp").forward(request, response);
			}
			request.setAttribute("news", list);
			request.getRequestDispatcher("jsp/search_result.jsp").forward(request, response);
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
