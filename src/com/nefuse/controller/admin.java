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
 * Servlet implementation class admin
 */
@WebServlet("/newsadmin")
public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
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
			request.getRequestDispatcher("WEB-INF/admin/admin.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
