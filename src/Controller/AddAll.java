package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modele.ajoutGlobal;

/**
 * Servlet implementation class AddAll
 */
@WebServlet("/AddAll")
public class AddAll extends HttpServlet {
	private static final long serialVersionUID = 1L;
    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String submit =request.getParameter("submit"); 

		 if(submit.equals("ajouterM")) {
		 ajoutGlobal.ajmedecin( request.getParameter("nom_d"), request.getParameter("prenom_d"), request.getParameter("adr_d"), request.getParameter("spe_c_d"),request.getParameter("num_d"),request.getParameter("sexe_d"), request.getParameter("log_d"), request.getParameter("pass_d"), Integer.parseInt(request.getParameter("age_d")));   
		 }
		 if(submit.equals("ajouterP")) {
			 ajoutGlobal.ajpatient( request.getParameter("nom_pa"), request.getParameter("prenom_pa"), request.getParameter("adr_pa"), request.getParameter("date_pa"),request.getParameter("num_pa"),request.getParameter("sexe_pa"), request.getParameter("log_pa"), request.getParameter("pass_pa"), Integer.parseInt(request.getParameter("age_pa")));   
			 }
		 this.getServletContext().getRequestDispatcher("/admin.jsp").forward(request, response);
			
	}

}
