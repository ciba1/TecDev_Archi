package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Modele.ajoutGlobal;

/**
 * Servlet implementation class update
 */
@WebServlet("/update")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update() {
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
		 String submit =request.getParameter("submit"); 
  
		 if(submit.equals("upM")) {

				   String name = request.getParameter("nom_u");
				   String prenom = request.getParameter("prenom_u");
				   String adr = request.getParameter("adr_u");
				   String sp = request.getParameter("adr_u");
				   String tel = request.getParameter("num_u");
				   String age = request.getParameter("age_u");
				   String pass = request.getParameter("pass_u");
				   String passC = request.getParameter("pass_u1");
				   
			if( pass.equals(passC)){
				   try {Class.forName("com.mysql.jdbc.Driver");
				      java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
				      Statement stmt = con.createStatement();
				      ResultSet rs = stmt.executeQuery("select idmedecin from medecin where login='"+request.getParameter("log_u")+"'");
				      
				      if(rs.next()) {
				       ajoutGlobal.upmedecin(name, prenom, adr,sp,tel,request.getParameter("sexe_u"), request.getParameter("log_u"), pass, Integer.parseInt(age),rs.getInt("idmedecin"));	
				       }
				     }
				      catch(Exception e) {System.out.println("erreur catch : "+e.getMessage());}
				} else {}
				   }
			   
	else if(submit.equals("upp")) {
					
		   String n = request.getParameter("nom_p");
		   String p = request.getParameter("prenom_p");
		   String a = request.getParameter("adr_p");
		   String t = request.getParameter("num_p");
		   String ag = request.getParameter("age_p");
		   String pas = request.getParameter("pass_p");
		   String pasC = request.getParameter("pass_p1");
		   if( pas.equals(pasC)){  try {
			   Class.forName("com.mysql.jdbc.Driver");
		      java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
		      Statement stmt = con.createStatement();
		      ResultSet rs = stmt.executeQuery("select idpatient from patient where login='"+request.getParameter("log_u")+"'");
		      
		      if(rs.next()) {
		    ajoutGlobal.uppatient(n, p, a,ag,t,request.getParameter("sexe_p"), request.getParameter("log_p"), pas, Integer.parseInt(ag),rs.getInt("idpatient"));	
		      }
		     }catch(Exception e) {System.out.println("erreur catch : "+e.getMessage());}
			 } 
		   else {}
		   }
	else if(submit.equals("delp")) {
		  try {
			   Class.forName("com.mysql.jdbc.Driver");
		      java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
		      Statement stmt = con.createStatement();
		      ResultSet rs = stmt.executeQuery("select idpatient from patient where login='"+request.getParameter("log_u")+"'");
		      
		      if(rs.next()) {
		    	  ajoutGlobal.delpatient(rs.getInt("idpatient"));  }
		     }catch(Exception e) {System.out.println("erreur catch : "+e.getMessage());}
			
		   }
	else if(submit.equals("delm")) {
		  try {
			   Class.forName("com.mysql.jdbc.Driver");
		      java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
		      Statement stmt = con.createStatement();
		      ResultSet rs = stmt.executeQuery("select idmedecin from medecin where login='"+request.getParameter("log_u")+"'");
		      
		      if(rs.next()) {
		    	  ajoutGlobal.delmedecin(rs.getInt("idmedecin"));
		    }
		     }catch(Exception e) {System.out.println("erreur catch : "+e.getMessage());}
			
		   }
		this.getServletContext().getRequestDispatcher("/admin").forward(request, response);
	}

}
