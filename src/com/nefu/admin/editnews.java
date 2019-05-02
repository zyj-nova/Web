package com.nefu.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nefu.domain.catagory;
import com.nefu.domain.news;
import com.nefu.service.NewsService;
import com.sun.org.apache.xml.internal.security.c14n.helper.C14nHelper;

/**
 * Servlet implementation class editnews
 */
@WebServlet("/edit")
public class editnews extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editnews() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		int id = Integer.parseInt(request.getParameter("id"));
		NewsService service = new NewsService();
		catagory c1 = new catagory();
		catagory c2 = new catagory();
		catagory c3 = new catagory();
		catagory c4 = new catagory();
		catagory c5 = new catagory();
		c1.setId(1);c1.setName("通知公告");
		c2.setId(2);c2.setName("新闻动态");
		c3.setId(3);c3.setName("学术讲座");
		c4.setId(4);c4.setName("实习就业");
		c5.setId(5);c5.setName("招生教学");
		List<catagory> allcatagory = new ArrayList<>();
		allcatagory.add(c1);
		allcatagory.add(c2);
		allcatagory.add(c3);
		allcatagory.add(c4);
		allcatagory.add(c5);
		try {
			news n = service.findNewsByID(id);
			request.setAttribute("n", n);
			request.setAttribute("lists", allcatagory);
			request.getRequestDispatcher("WEB-INF/admin/bianji.jsp").forward(request, response);
		}catch (Exception e) {
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
