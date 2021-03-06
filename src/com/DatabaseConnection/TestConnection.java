package com.DatabaseConnection;

import java.sql.Connection;

public class TestConnection {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Connection conn = jdbcConnection.getJdbcConnection();
		System.out.println("Connection Ok");

	}

}
