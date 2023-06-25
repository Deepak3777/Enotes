package com.enotes.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.enotes.Beans.User;
import com.enotes.Beans.note;
import com.enotes.Model.Notedao;

/**
 * Servlet implementation class Addnote
 */
@WebServlet("/Addnote")
public class Addnote extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addnote() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String title=request.getParameter("title");
		String desc=request.getParameter("desc");
		int uid=Integer.parseInt(request.getParameter("uid"));
		
		Notedao n1=new Notedao();
		boolean b=n1.addnote(title,desc,uid);
		if(b) {
			response.sendRedirect("notes.jsp");
			
			
			
		}
		else {
			System.out.println("check something went wrong");
		}
		
	}

}
