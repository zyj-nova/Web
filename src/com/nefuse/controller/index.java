package com.nefuse.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nefu.domain.news;
import com.nefu.service.NewsService;

/**
 * Servlet implementation class index
 */
@WebServlet("/index")
public class index extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		NewsService service = new NewsService();
		try {
			List<news> gonggao = new ArrayList<news>();
			List<news> dongtai1 = new ArrayList<news>();
			List<news> dongtai2 = new ArrayList<news>();
			List<news> shixijiuye = new ArrayList<news>();
			List<news> jiangzuo = new ArrayList<news>();
			List<news> zhaosheng = new ArrayList<news>(); 
			/*List<dates> gDates = new ArrayList<>();
			List<dates> jDates = new ArrayList<>();
			SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
			String [] str1,str2;*/
			
			for(int i=0;i < 5; i++ ) {
				/*dates gd = new  dates();
				dates jd = new dates();*/
				news g =  service.findAllGONGGAO().get(i);
				news j = service.findAllJIANGZUO().get(i);
				Date d1 = g.getInsertDate();
				Date d2 = j.getInsertDate();
				/*String date1 = fmt.format(d1);
				String date2 = fmt.format(d2);
				str1 = date1.split("-");//公告的日期
				str2 = date2.split("-");//讲座的日期
				gd.setDay(str1[2]);
				gd.setMonth(str1[1]);
				jd.setMonth(str2[1]);
				jd.setDay(str2[2]);
				gDates.add(gd);
				jDates.add(jd);*/
				//System.out.println(service.findAllDONGTAI().get(i).getTitle());
				gonggao.add(g);
				dongtai1.add(service.findAllDONGTAI().get(i));
				shixijiuye.add(service.findSHIXIJIUYE().get(i));
				jiangzuo.add(j);
				zhaosheng.add(service.findZHAOSHENG().get(i));
			}
			for(int i=5; i < 10; i++) {
				dongtai2.add(service.findAllDONGTAI().get(i));
			}
			request.setAttribute("gonggao", gonggao);
			request.setAttribute("dongtai1", dongtai1);
			request.setAttribute("dongtai2", dongtai2);
			request.setAttribute("shixijiuye",shixijiuye);
			request.setAttribute("jiangzuo", jiangzuo);
			request.setAttribute("zhaosheng", zhaosheng);
			/*request.setAttribute("jd", jDates);
			request.setAttribute("gd", gDates);*/
			request.getRequestDispatcher("jsp/index.jsp").forward(request, response);
		} catch (Exception e) {
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
