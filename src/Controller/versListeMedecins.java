package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Modele.medecin;


/**
 * Servlet implementation class versListeMedecins
 */
@WebServlet("/versListeMedecins")
public class versListeMedecins extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public versListeMedecins() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("/medecins.jsp?page=medecin").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 ArrayList<medecin> med=new ArrayList<>();
		
	    String uname = request.getParameter("Rmed");
	    String[] s= uname.split(" ");
	    try {
	    	HttpSession session = request.getSession();
	     Class.forName("com.mysql.jdbc.Driver");
	      java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
	      Statement stmt = con.createStatement();
	      ResultSet rs = stmt.executeQuery("select * from medecin where nom='"+s[0]+"' or prenom='"+s[1]+"' ");
	      
	      while(rs.next()) {
	    	    med.add(new medecin(rs.getInt("idmedecin"),rs.getString("nom"),rs.getString("prenom"),rs.getString("adresse"),rs.getString("specialite"),rs.getString("telephone")));
	    	    }
	      session.setAttribute("medJSP",med.get(0).getIdmedecin());
	      session.setAttribute("medJSPnom",med.get(0).getNom()+" "+med.get(0).getPrenom());
	      request.setAttribute("search","ok");
         request.setAttribute("med",med);
         this.getServletContext().getRequestDispatcher("/medecins.jsp").forward(request, response);
      
        
	      }
	      catch(Exception e) { System.out.print("erreur : "+e.getMessage());}
	}

}
