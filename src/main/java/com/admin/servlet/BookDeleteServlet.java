package com.admin.servlet;

import java.io.IOException;

import com.DAO.BookDaoImpl;
import com.db.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete")
public class BookDeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			BookDaoImpl dao=new BookDaoImpl(DBConnect.getConn());
			boolean f=dao.deleteBooks(id);
HttpSession session=req.getSession();
			
			if(f) {
				session.setAttribute("sucMsg", "Book delete success" );
				resp.sendRedirect("admin/all_books.jsp");
			}else {
				session.setAttribute("failedMsg", "someting went to wrong" );
				resp.sendRedirect("admin/all_books.jsp");
			}
			
		}catch (Exception e) {
			// TODO: handle exception
		}
	}

}
