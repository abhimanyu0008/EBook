package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDAOImpl implements UserDAO{
	private Connection conn;

	public UserDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean userRegister(User us) {
		boolean f=false;
		try {
			String sql="insert into user1(email, name, phno, password) values(?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, us.getEmail());
			ps.setString(2, us.getName());
			ps.setString(3,us.getPhno());
			ps.setString(4, us.getPassword());
			
//			System.out.println(email+" "+name+" "+phono+" "+password);
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
			
		}catch(Exception e){
			
		}
		return f;
	}
	public User login(String email, String password) {
		User us=null;
		try {
			String sql="select * from user1 where email=? and password=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				us=new User();
				us.setId(1);
				us.setEmail(rs.getString(2));
				us.setName(rs.getString(3));
				us.setPhno(rs.getString(4));
				us.setPassword(rs.getString(5));
				us.setAddress(rs.getString(6));
				us.setLandmark(rs.getString(7));
				us.setCity(rs.getString(8));
				us.setState(rs.getString(9));
				us.setPincode(rs.getString(10));
				
				
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return us;
	}
	
}
