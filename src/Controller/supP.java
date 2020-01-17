package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class supP
 */
@WebServlet("/supP")
public class supP extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   String name = request.getParameter("nom_p");
	   String prenom = request.getParameter("prenom_p");
	     try {	
      Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
    Statement stmt = con.createStatement();
    
	  } catch(Exception e) {System.out.print("erreur : "+e.getMessage()); }
	  
	this.getServletContext().getRequestDispatcher("/admin").forward(request, response);


}

}
