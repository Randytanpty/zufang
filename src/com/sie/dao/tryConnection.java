package com.sie.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class tryConnection {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {

			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection testConnetion = DriverManager.getConnection(
					"jdbc:sqlserver://localhost:1433;databaseName=zufang",
					"sa", "000000");
			System.out.println("connection is ok");
		} catch (Exception e) {
			System.out.println("error");
			e.printStackTrace();
	
		}

	}

}
