package com.enotes.Model;

import java.sql.Connection;
import java.sql.DriverManager;

public class Mydb {
	
	static Connection con=null;
	
	static Connection getcon() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3312/userdb","root","deepak9892098153@");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	public static void main(String args[]) {
		Mydb.getcon();
	}

}
