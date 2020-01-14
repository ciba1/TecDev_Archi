package Controller;

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

import Modele.maladie;
import Modele.maladiePossedeSymptome;
import Modele.medicament;

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
		ArrayList<maladiePossedeSymptome> med = new ArrayList<maladiePossedeSymptome>();
		ArrayList<maladie> maladie = new ArrayList<maladie>();
		 PrintWriter out = response.getWriter();
		//reccuper resultats 
		 String search = (String) request.getParameter("search");
		 String[] SearcheTableau= search.split(",");
	      String recherche="nomSymptome='"+SearcheTableau[0]+"'";
	      for (int i=1;i<SearcheTableau.length-1 ;i++) {
	    	  recherche=recherche+" and nomSymptome='"+SearcheTableau[i].substring(1, SearcheTableau[i].length())+"'";
	     }
	      // construire la clause where  :: .substring(1, SearcheTableau[i].length())
		try {	
		  Class.forName("com.mysql.jdbc.Driver");
	      Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
	      Statement stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery("select * from maladie_possede_symptome d join maladie m on(d.nomMaladie=m.nom) WHERE "+recherche);
	
 		while(rs.next()) {
 			med.add(new maladiePossedeSymptome (rs.getString("nomMaladie"),rs.getString("nomSymptome")));
	    	 maladie.add(new maladie(rs.getString("nomMaladie"),rs.getString("discription")));
	    	  }}
            
	     catch(Exception e) {System.out.print("erreur : "+e.getMessage()); }
		request.setAttribute("maladiesymptome", med);
		request.setAttribute("mal",maladie );
		this.getServletContext().getRequestDispatcher("/diagnovit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
