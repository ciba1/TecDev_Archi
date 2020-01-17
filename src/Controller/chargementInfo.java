package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modele.medecin;
import Modele.medicament;
import Modele.patient;

@WebServlet("/admin")
public class chargementInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<patient> med = new ArrayList<patient>();
		  try {	Class.forName("com.mysql.jdbc.Driver");
	      Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
	      Statement stmt = con.createStatement();
	      ResultSet rs = stmt.executeQuery("SELECT * FROM `patient`");
	     
	     while(rs.next()) {
	    	 med.add(new patient(rs.getInt("idpatient"),rs.getString("nom"),rs.getString("prenom"),rs.getString("adresse"),rs.getInt("age"),rs.getString("telephone"),rs.getString("dateNaissance"),rs.getString("login"),rs.getString("motPasse")));
	           }
	    con.close(); } catch(Exception e) {System.out.print("erreur : "+e.getMessage()); }
		request.setAttribute("patient",med);
		request.setAttribute("pcrud","pcrud=ok");
		
		
		ArrayList<medecin> med1 = new ArrayList<medecin>();
		  try {	Class.forName("com.mysql.jdbc.Driver");
	      Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
	      Statement stmt = con.createStatement();
	      ResultSet rs = stmt.executeQuery("SELECT * FROM medecin");
	     
	     while(rs.next()) {System.out.print("");
	    	 med1.add(new medecin(rs.getInt("idmedecin"),rs.getString("nom"),rs.getString("prenom"),rs.getString("adresse"),rs.getString("specialite"),rs.getString("telephone"),rs.getString("login"),rs.getString("motPasse")));
	    	    }
	     con.close();  } catch(Exception e) {System.out.print("erreur : "+e.getMessage()); }
		request.setAttribute("medecin",med1);
		request.setAttribute("mcrud","mcrud=ok");
	
		
		ArrayList<medicament> med2 = new ArrayList<medicament>();
		  try {	
             Class.forName("com.mysql.jdbc.Driver");
	      Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
	      Statement stmt = con.createStatement();
	      ResultSet rs = stmt.executeQuery("SELECT * FROM medicament WHERE type='herbo'");
	      
	     while(rs.next()) {
	    	 med2.add(new medicament(rs.getString("label"),rs.getString("effets"),rs.getInt("prix")));
	    	      } 
	     con.close();   } catch(Exception e) {System.out.print("erreur : "+e.getMessage()); }
		request.setAttribute("herbe",med2);
		request.setAttribute("hcrud","hcrud=ok");
	
		
		ArrayList<medicament> med3 = new ArrayList<medicament>();
		  try {	
             Class.forName("com.mysql.jdbc.Driver");
	      Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
	      Statement stmt = con.createStatement();
	      ResultSet rs = stmt.executeQuery("SELECT * FROM medicament where type='pharm' ");
	      
	     while(rs.next()) {
	    	 med3.add(new medicament(rs.getString("label"),rs.getString("effets"),rs.getInt("prix")));
	              }
		 con.close();   }  catch(Exception e) {System.out.print("erreur : "+e.getMessage()); }
		request.setAttribute("medicament",med3);
		request.setAttribute("medicrud","medicrud=ok");
		this.getServletContext().getRequestDispatcher("/admin.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	}

