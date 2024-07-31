package TestCases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class TestClass {
	public static void main(String args[]) {
		System.out.println("Hello");
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook","root","Abhi7646");
			Statement st=con.createStatement();
			String query="select * from test";
			ResultSet rs=st.executeQuery(query);
			
			while(rs.next()) {
				System.out.println(rs.getString(1)+" "+rs.getString(2));
			
			}
			con.close();
		}catch(Exception e) {
			
		}
	}

}
