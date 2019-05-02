package com.nefu.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nefu.service.AdminService;
import com.nefu.service.NewsService;
import com.sun.org.apache.bcel.internal.generic.NEW;

/**
 * Servlet implementation class deletenews
 */
@WebServlet("/delete")
public class deletenews extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		NewsService service = new NewsService();
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			service.deleteNewsByID(id);
			response.sendRedirect("newsadmin");
		}catch (Exception e) {
			// TODO: handle exception
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
