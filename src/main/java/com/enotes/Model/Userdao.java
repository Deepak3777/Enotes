package com.enotes.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.enotes.Beans.User;

public class Userdao {
	Connection con=Mydb.getcon();
	public boolean adduser(User u) {
		boolean b=false;
		int i=0;
		String sql="insert into userlist(fname,mail,pass) values(?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, u.getFname());
			ps.setString(2, u.getMail());
			ps.setString(3, u.getPass());
		    i=ps.executeUpdate();
		    if(i==1) {
		    	b=true;
		    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
		
	}
	public User checkuser(User u) {
		String sql="select * from userlist where mail=? and pass=?";
		User u1=null;
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, u.getMail());
			ps.setString(2, u.getPass());
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				u1=new User();
				u1.setId(rs.getInt(1));
				u1.setFname(rs.getString(2));
				u1.setMail(rs.getString(3));
				u1.setPass(rs.getString(4));
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u1;
		
	}

}
