package com.DatabaseConnection;

import java.sql.DriverManager;

import java.sql.Connection;

public class jdbcConnection {
	
	
	public static Connection getJdbcConnection()
	{
		Connection conn = null;
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			if(conn==null)
			{
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mauli_coaching_class","root","root");
			}
		} 
		catch (Exception e) 
		{
			// TODO: handle exception
		}
		
		
		return conn;
		
		
		
		
	}

}
