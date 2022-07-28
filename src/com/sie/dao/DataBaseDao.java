package com.sie.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DataBaseDao {

	public Connection con = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;

	/**
	 * 连接sql2005
	 * 
	 * @return
	 */
	// main for test
	public static void main(String[] args) {
		try {

			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection testConnetion = DriverManager.getConnection(
					"jdbc:sqlserver://45.76.245.124:1433;databaseName=zufang",
					"sa", "Testing1122");
			System.out.println("connection is ok");
		} catch (Exception e) {
			System.out.println("error");
			e.printStackTrace();
	
		}
	}
	// main for test
	
	
	public Connection getCon() {
		try {

			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con = DriverManager.getConnection(
					"jdbc:sqlserver://45.76.245.124:1433;databaseName=zufang",
					"sa", "Testing1122");
			return con;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 执行那个增删改操作
	 * 
	 * @param sql
	 * @param param
	 * @return
	 */
	public int executeSql(String sql, String[] param) {
		try {
			ps = this.getCon().prepareStatement(sql);
			for (int i = 0; i < param.length; i++) {
				ps.setString(i + 1, param[i]);
			}
			return ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}

	/**
	 * 关闭各种连接
	 * 
	 * @param rs
	 * @param ps
	 * @param con
	 */
	public void closeDB(ResultSet rs, PreparedStatement ps, Connection con) {

		try {
			if (!rs.equals(null)) {
				rs.close();
				rs = null;
			}
			if (!ps.equals(null)) {
				ps.close();
				ps = null;
			}
			if (!con.equals(null) && !con.isClosed()) {
				con.close();
				con = null;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}

}
