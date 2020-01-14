package Controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;





public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page =request.getParameter("page");
		if(page==null) { //hena yeroh direct lel home apres ki yedkhol lel home maysibch session yedih lel login :p ow win rehi hedi 
			response.sendRedirect("index?page=home");
		}
		else {
			this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
	 
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user =(String)request.getParameter("name");
		String password =(String)request.getParameter("pass");
		if(user.equals("admin") && password.equals("admin")) {
			// hadi statique bayena apres nti rigliha be BD fe exemple nta3k ^^ :p 
			HttpSession session = request.getSession();
			session.setAttribute("user",user);
			response.sendRedirect("index?page=home");
		}

	}

}
