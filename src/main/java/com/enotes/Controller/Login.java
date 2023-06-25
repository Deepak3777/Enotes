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
 * Servlet implementation class login
 */
@WebServlet("/LogIn")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		String mail=request.getParameter("mail");
		String pass=request.getParameter("pass");
		User u=new User();
		u.setMail(mail);
		u.setPass(pass);
		Userdao ud =new Userdao();
		User u1=ud.checkuser(u);
		HttpSession session;
		if(u1!=null) {
			session=request.getSession();
			session.setAttribute("User", u1);
			response.sendRedirect("home.jsp");
		}
		else {
			 session=request.getSession();
			session.setAttribute("f1-msg", "Wrong Credentials");
			response.sendRedirect("login.jsp");
		}
		
		
	}

}
