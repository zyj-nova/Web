package com.nefuse.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nefu.service.NewsService;

/**
 * Servlet implementation class tongji
 */
@WebServlet("/tongji")
public class tongji extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tongji() {
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
		
		try {
			int gonggao = service.countGONGGAO();
			int jiangzuo = service.countJIANGZUO();
			int shixijiuye = service.countSHIXIJIUYE();
			int dongtai = service.countDONGTAI();
			int zhaosheng = service.countZHAOSHENG();
			request.setAttribute("gonggao", gonggao);
			request.setAttribute("jiangzuo", jiangzuo);
			request.setAttribute("shixijiuye", shixijiuye);
			request.setAttribute("dongtai", dongtai);
			request.setAttribute("zhaosheng", zhaosheng);
			request.getRequestDispatcher("WEB-INF/admin/tongji.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
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
