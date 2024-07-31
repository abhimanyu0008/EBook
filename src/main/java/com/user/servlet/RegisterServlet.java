package com.user.servlet;

import java.io.IOException;

import com.DAO.UserDAOImpl;
import com.db.DBConnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email=req.getParameter("email");
			String name=req.getParameter("fname");
			String phno=req.getParameter("phno");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			
//			System.out.println(name+" "+email+" "+phno+" "+password+" "+check);
			
			 User us=new User();
			 us.setEmail(email);
			 us.setName(name);
			 us.setPhno(phno);
			 us.setPassword(password);
			 
			 HttpSession session=req.getSession();
			 
			 if(check!=null) {
				 UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
				 boolean f=dao.userRegister(us);
				 if(f) {
//					 System.out.println("Register success");
					session.setAttribute("sucMsg", "Registration successfull..");
					resp.sendRedirect("register.jsp");
					 
				 }else {
//					 System.out.println("something wrong");
					 session.setAttribute("failedMsg", "someting went to wrong..");
					 resp.sendRedirect("register.jsp");
				 }
			 }else {
//				 System.out.println("please check term & condition");
				 session.setAttribute("failedMsg", "please check term & condition..");
				 resp.sendRedirect("register.jsp");
			 }
			 
		}catch(Exception e) {
			
		}
		
	}
	
	
}
