package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import com.DAO.BookDaoImpl;
import com.db.DBConnect;
import com.entity.BookDetails;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@WebServlet("/add_books")
@MultipartConfig
public class BooksAdd extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String bookname=req.getParameter("bname");
			String author=req.getParameter("author");
			String price=req.getParameter("price");
			String bookCategory=req.getParameter("bcategory");
			String bookSattus=req.getParameter("bstatus");
			Part part=req.getPart("bimg");
			String fileName=part.getSubmittedFileName();
			
			BookDetails bd=new BookDetails(0,bookname, author, price,bookCategory, bookSattus, fileName,"admin");
			System.out.println(bd);
			
			BookDaoImpl dao=new BookDaoImpl(DBConnect.getConn());
			
			
			boolean f=dao.addBooks(bd);
			HttpSession session=req.getSession();
			
			if(f) {
				String path=getServletContext().getRealPath("")+"Rbook";
//				System.out.println(path);
				File file=new File(path);
				part.write(path + File.separator + fileName);
					
				session.setAttribute("sucMsg", "Book added successfully");
				resp.sendRedirect("admin/add_books.jsp");
			}else {
			session.setAttribute("failedMsg", "something wrong on server");
				resp.sendRedirect("admin/add_books.jsp");
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	

}
