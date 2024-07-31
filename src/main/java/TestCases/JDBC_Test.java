package TestCases;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBC_Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String url="jdbc:mysql://localhost:3306/ebook";
		String username="root";
		String password="Abhi7646";
		Connection con=null;
		
		try {
			System.out.println("jdbc connection");
			con=DriverManager.getConnection(url,username,password);
			System.out.println("connection is success");
		}catch(Exception e) {
			e.printStackTrace();
		}
		

	}

}
