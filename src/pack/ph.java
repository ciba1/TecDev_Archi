package pack;

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

import src.medicament;

/**
 * Servlet implementation class ph
 */
@WebServlet("/ph")
public class ph extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /********
     * @see HttpServlet#HttpServlet()
     */
    public ph() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<medicament> medph =new ArrayList<>();
		try {	Class.forName("com.mysql.jdbc.Driver");
	    
	    
	      Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
	      Statement stmt = con.createStatement();
	      ResultSet rs = stmt.executeQuery("SELECT * FROM `medicament` WHERE type='pharm' ");
	      
	     while(rs.next()) {
	    	 medph.add(new medicament(rs.getString("label"),rs.getString("effets"),rs.getDouble("prix")));
	    	 
      }}
            
	     catch(Exception e) {System.out.print("erreur : "+e.getMessage()); }
		request.setAttribute("medph", medph);
		this.getServletContext().getRequestDispatcher("/pharmavit.jsp").forward(request, response);
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
	}

}
