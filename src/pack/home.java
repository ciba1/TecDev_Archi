package pack;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class home
 */

public class home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   

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
		//doGet(request, response);
		 PrintWriter out = response.getWriter();
		    String uname = request.getParameter("name");
		    String upass = request.getParameter("pass");
		    try {
		    	Class.forName("com.mysql.jdbc.Driver");
		    
		    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
		      Statement stmt = con.createStatement();
		      ResultSet rs = stmt.executeQuery("select * from patient where login='"+uname+"' and motPasse='"+upass+"'");
		      
		      if(rs.next()) {
		    	  HttpSession session = request.getSession();
		         request.setAttribute("name", rs.getString("nom")+" "+rs.getString("prenom"));
		         request.setAttribute("username", uname);
		       
		         
		        response.sendRedirect("/e_health/index");
		        
		      }else {
		        out.println("Wrong id and password");
		      }}
		      catch(Exception e) {System.out.print("erreur : "+e.getMessage());}

	}

}
