package org.admin.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBConfig {
	
	protected PreparedStatement stmt;
	protected Connection conn;
	protected ResultSet rs;
	
	public  DBConfig()
	{
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni_event","root","root");
			
		}
		catch(Exception ex)
		{
			System.out.println("Error"+ex);
		}
	}
	
	

}

