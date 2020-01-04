package pack;

import java.io.IOException;
import java.io.PrintWriter;
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

import src.maladie;
import src.maladiePossedeSymptome;
import src.medicament;

/**
 * Servlet implementation class resultatRechercheMaladie
 */
@WebServlet("/resultatRechercheMaladie")
public class resultatRechercheMaladie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("do get ta3 vers diagnostique");
		ArrayList<maladiePossedeSymptome> med = new ArrayList<maladiePossedeSymptome>();
		ArrayList<maladie> maladie = new ArrayList<maladie>();
		 PrintWriter out = response.getWriter();
		    String recherche = request.getParameter("search");
		try {	System.out.println("try  "+recherche);
		  Class.forName("com.mysql.jdbc.Driver");
	      Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
	      Statement stmt = con.createStatement();
 ResultSet rs = stmt.executeQuery("select * from maladie_possede_symptome d join maladie m on(d.nomMaladie=m.nom) WHERE nomSymptome='"+recherche+"'");
	      //
 
 System.out.println("apres cnx");
	     while(rs.next()) {
	    	 med.add(new maladiePossedeSymptome (rs.getString("nomMaladie"),rs.getString("nomSymptome")));
	    	 maladie.add(new maladie(rs.getString("nomMaladie"),rs.getString("discription")));
	    	 System.out.println("boucle while heda med "+med.get(0).getNomMaladie()+"  w heda maladie = "+maladie.get(0).getNom());
	     }}
            
	     catch(Exception e) {System.out.print("erreur : "+e.getMessage()); }
		request.setAttribute("maladiesymptome ", med);
		request.setAttribute("mal",maladie );
		
		
		System.out.println("apres requeste");

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
