package com.enotes.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.enotes.Beans.User;
import com.enotes.Beans.note;
import com.mysql.cj.jdbc.PreparedStatementWrapper;

public class Notedao {
	Connection con=Mydb.getcon();
	
	public boolean addnote(String title,String des,int uid) {
		boolean b=false;
		int i=0;
		String sql="insert into notes(title,descript,uid) values(?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, title);
			ps.setString(2,des);
			ps.setInt(3, uid);
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
	public List<note> fnote(int id) {
		note n1=null;

		List<note> Ln1=new ArrayList<note>();
		try {
			String sql="select * from notes where uid='"+id+"' order by id desc";
			Statement st=con.createStatement();
			ResultSet rs= st.executeQuery(sql);
			while(rs.next()) {
				n1=new note();
				n1.setId(rs.getInt(1));
				n1.setTitle(rs.getString(2));
				n1.setDesc(rs.getString(3));
				n1.setNdate(rs.getTimestamp(5));
				Ln1.add(n1);
			}
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return Ln1;
		
		
	}
	public note fetchnotebyid(int id) {
		note n1=null;
		try {
			String sql="select * from notes where id='"+id+"'";
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()) {
				n1=new note();
				n1.setId(rs.getInt(1));
				n1.setTitle(rs.getString(2));
				n1.setDesc(rs.getString(3));
				n1.setNdate(rs.getTimestamp(5));
				
			}
			
		}catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return n1;
	}
	public boolean updatenote(int id,String title,String desc) {
		String sql="Update notes set title=?,descript=? where id=?";
		boolean b=false;
		int i=0;
		try {
			PreparedStatement pt=con.prepareStatement(sql);
			pt.setString(1, title);
			pt.setString(2, desc);
			pt.setInt(3, id);
			
			i=pt.executeUpdate();
			if(i==1) {
				b=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return b;
	}
	public boolean deletebyid(int id) {
		// TODO Auto-generated method stub
		boolean b=false;
		int i=0;
		String sql="delete from notes where id='"+id+"'";
		try {
			Statement st=con.createStatement();
			i=st.executeUpdate(sql);
			if(i==1) {
				b=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	
		
		
	

}
