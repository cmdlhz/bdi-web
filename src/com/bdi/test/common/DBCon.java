package com.bdi.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBCon {
	private final static String URL;
	private final static String ID;
	private final static String PWD;
	private static final String DRIVER_NAME;
	
	static {
		URL = "jdbc:oracle:thin:@localhost:1521:xe";
		ID = "bdi";
		PWD = "12345678";
		DRIVER_NAME = "oracle.jdbc.driver.OracleDriver";
		
		try {
			Class.forName(DRIVER_NAME);
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	private static Connection con;
	
	public static Connection getCon() {
		if(con == null) {
			try {
				con = DriverManager.getConnection(URL, ID, PWD);
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return con;
	}
	
//	public static void main(String[] args) {
//		Connection con = getCon();
//		try {
//			Statement stmt = con.createStatement();
//			stmt.executeQuery("select * from movie");
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
}