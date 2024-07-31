package com.admin.servlet;

import java.io.IOException;

import com.DAO.BookDaoImpl;
import com.db.DBConnect;
import com.entity.BookDetails;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/editbook")
public class EditBookServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String bookname=req.getParameter("bname");
			String author=req.getParameter("author");
			String price=req.getParameter("price");
			String bookSattus=req.getParameter("bstatus");
			
			BookDetails b=new BookDetails();
			b.setBookId(id);
			b.setBookName(bookname);
			b.setAuthor(author);
			b.setStatus(bookSattus);
			
			BookDaoImpl dao=new BookDaoImpl(DBConnect.getConn());
			boolean f=dao.updateEditBooks(b);
			HttpSession session=req.getSession();
			
			if(f) {
				session.setAttribute("sucMsg", "Book udate success" );
				resp.sendRedirect("admin/all_books.jsp");
			}else {
				session.setAttribute("failedMsg", "someting went to wrong" );
				resp.sendRedirect("admin/all_books.jsp");
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
