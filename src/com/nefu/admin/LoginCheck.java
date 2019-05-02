package com.nefu.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nefu.domain.admin;
import com.nefu.service.AdminService;

/**
 * Servlet implementation class LoginCheck
 */
@WebServlet("/login")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String adminid = request.getParameter("userName");
		String adminpass = request.getParameter("password");
		AdminService service = new AdminService();
		try {
			admin user = service.CheckLogin(adminid, adminpass);
			if (user!=null) {
				request.getSession().setAttribute("admin", user);
				request.getRequestDispatcher("adminIndex").forward(request, response);
			}else
			{
				request.setAttribute("msg", "用户名或密码错误!");
				request.getRequestDispatcher("WEB-INF/admin/login.jsp").forward(request, response);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
	}

}
