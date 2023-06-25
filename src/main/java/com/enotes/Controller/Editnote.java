package com.enotes.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.enotes.Model.Notedao;

/**
 * Servlet implementation class Editnote
 */
@WebServlet("/Editnote")
public class Editnote extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Editnote() {
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
		int nid=Integer.parseInt(request.getParameter("noteid"));
		String title=request.getParameter("title");
		String desc=request.getParameter("desc");
		Notedao n1=new Notedao();
		boolean b=n1.updatenote(nid,title,desc);
		HttpSession session=request.getSession();
		if(b) {
			session.setAttribute("suc2-msg","Data updation successful");
			response.sendRedirect("notes.jsp");
			
			
		}
		else {
			session.setAttribute("unsuc1-msg","Something went wrong");
			response.sendRedirect("edit.jsp");

		}
		
		
	}

}
