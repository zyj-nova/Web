package com.nefu.admin;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.nefu.domain.news;
import com.nefu.service.NewsService;

/**
 * Servlet implementation class addnews
 */
@WebServlet("/add")
public class addnews extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		NewsService service = new NewsService();
		
		news n = new news();
		boolean isMultipartContent = ServletFileUpload
				.isMultipartContent(request);
		if (!isMultipartContent) {
			
		}

		// 创建一个DiskFileItemfactory工厂类
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setRepository(new File("f:\\"));// 指定临时文件的存储目录
		// 创建一个ServletFileUpload核心对象
		ServletFileUpload sfu = new ServletFileUpload(factory);
		// 解决上传表单项乱码问题
		sfu.setHeaderEncoding("UTF-8");
		
		try {
			List<FileItem> fileItems = sfu.parseRequest(request);
			// 遍历表单项数据
			for (FileItem fileitem : fileItems) {
				if (fileitem.isFormField()) {
					// 普通表单项
					processFormField(fileitem,n);
				} else {
					// 上传表单项
					
					processUploadField(fileitem);
				}
			}
			service.addNews(n);
			request.getRequestDispatcher("/adminIndex").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void processUploadField(FileItem fileitem) {
		try {
			// 得到文件输入流
			InputStream is = fileitem.getInputStream();
			int y,m,d;    
			Calendar cal=Calendar.getInstance();    
			y=cal.get(Calendar.YEAR);    
			m=cal.get(Calendar.MONTH);    
			d=cal.get(Calendar.DATE); 
			String dString;
			if (d<10) {
				dString = y+""+m+"0"+d;
			}
			else
				dString = y +"" +m + "" +d;
			// 创建一个文件存盘的目录
			String path = File.separator + "resources" + File.separator + "ueditor" + File.separator
					+ "jsp"+ File.separator + "upload" + File.separator + "image" + File.separator + dString + File.separator;
			String directoryRealPath = path;
			File storeDirectory = new File(directoryRealPath);// 即代表文件又代表目录
			if (!storeDirectory.exists()) {
				storeDirectory.mkdirs();// 创建一个指定的目录
			}
			// 得到上传的名子
			String filename = fileitem.getName();
			System.out.println(filename);
			File file = new File(storeDirectory, filename);
			FileOutputStream fos = new FileOutputStream(file);

			int len = 0;
			byte[] b = new byte[10240];
			while ((len = is.read(b)) != -1) {
				fos.write(b, 0, len);
			}
			fos.close();
			is.close();
			fileitem.delete();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void processFormField(FileItem fileitem,news n) throws Exception{
		try {
			String fieldname = fileitem.getFieldName();// 字段名
			if ("author".equals(fieldname)) {
				n.setAuthor(fileitem.getString("UTF-8"));
			}else if ("content".equals(fieldname)) {
				n.setContent(fileitem.getString("UTF-8"));
			}else if ("insertDate".equals(fieldname)) {
				SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
				Date insertDate = fmt.parse(fileitem.getString());
				n.setInsertDate(insertDate);
			}else if ("source".equals(fieldname)) {
				n.setSource(fileitem.getString("UTF-8"));
			}else if ("title".equals(fieldname)) {
				n.setTitle(fileitem.getString("UTF-8"));
			}else if ("catagory".equals(fieldname)) {
				n.setCatagory(Integer.parseInt(fileitem.getString("UTF-8")));
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
