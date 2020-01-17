package Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Modele.ConnexionForm;
import Modele.Utilisateur;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet("/VersLogin")
public class VersLogin extends HttpServlet {
	    public VersLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    String uname = request.getParameter("name");
		    String upass = request.getParameter("pass");
		    try {
		    	
		     Class.forName("com.mysql.jdbc.Driver");
		      java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
		      Statement stmt = con.createStatement();
		      ResultSet rs = stmt.executeQuery("select * from patient where login='"+uname+"' and motPasse='"+upass+"'");
		      
		      if(rs.next()) {
		    	  HttpSession session = request.getSession();
		    	  session.setAttribute("name", rs.getString("nom")+" "+rs.getString("prenom"));
		         session.setAttribute("user",rs.getString("idpatient"));
		        response.sendRedirect("/e_health/index?page=home");
		        
		      }
ResultSet rs2 = stmt.executeQuery("select * from medecin where login='"+uname+"' and motPasse='"+upass+"'");
		      
		      if(rs2.next()) {
		    	  HttpSession session =request.getSession();
		    	 session.setAttribute("name", rs2.getString("nom")+" "+rs2.getString("prenom"));
		         session.setAttribute("user",rs2.getString("idmedecin"));
		        response.sendRedirect("/e_health/admin?page=admin");
		        
		      }  
		   
		    }
		      catch(Exception e) {System.out.print("erreur : "+e.getMessage());}
		
		
   }

}
