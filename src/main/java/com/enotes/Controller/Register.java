package com.enotes.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.enotes.Beans.User;
import com.enotes.Model.Userdao;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		String fname=request.getParameter("fname");
		String mail=request.getParameter("mail");
		String pass=request.getParameter("pass");
		User u=new User();
		u.setFname(fname);
		u.setMail(mail);
		u.setPass(pass);
		Userdao ud=new Userdao();
		boolean b=ud.adduser(u);
		HttpSession session;
		if(b) {
			session=request.getSession();
			session.setAttribute("s-msg", "You are Registered Successfully");
			response.sendRedirect("register.jsp");
			
		}
		else {
			session=request.getSession();
			session.setAttribute("f-msg", "Something went wrong at serverside");
			response.sendRedirect("register.jsp");
		}
		
	}

}
