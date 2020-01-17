package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.sql.Statement;
import java.text.DateFormat;

import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RV
 */
@WebServlet("/RV")
public class RV extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("/medecins.jsp?page=medecin").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String[] jr = request.getParameter("jour").split("/");
		String[] dt = request.getParameter("heure").split(":");
		DateFormat formatter = new SimpleDateFormat("HH:mm:ss");
		java.sql.Time timeValue;
		PrintWriter out = response.getWriter();
		
		try {
			timeValue = new java.sql.Time(formatter.parse(dt[0] + ":" + dt[1] + ":00").getTime());
			HttpSession session = request.getSession();
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "root", "");

			PreparedStatement prepareStmt = con.prepareStatement(
					"INSERT INTO `rendez_vous`(`idpatient`, `idmedecin`, `date`, `heure`) VALUES (?,?,?,?)");
			prepareStmt.setInt(1, Integer.parseInt((String) session.getAttribute("user")));
			prepareStmt.setInt(2, (Integer) session.getAttribute("medJSP"));
			prepareStmt.setDate(3, java.sql.Date.valueOf(jr[2] + "-" + jr[0] + "-" + jr[1]));
			prepareStmt.setTime(4, timeValue);
			prepareStmt.execute();
			out.print("<div class='alert alert-success' role='alert'>");
			out.print("<h4 class='alert-heading'> Rendez vous est pris ! </h4>");
			out.print("<p>un rendez-vous a été pris préalablement de ");
			out.print(timeValue);
			out.print(" pendant un jour ouvrable  le ");
			out.print(java.sql.Date.valueOf(jr[2] + "-" + jr[0] + "-" + jr[1]));
			out.print(" chez le Medecin ");
			out.print((String) session.getAttribute("medJSPnom"));
			out.print("</p>");
			out.print("</div>");
			this.getServletContext().getRequestDispatcher("/medecins.jsp").forward(request, response);

		} catch (Exception e) {
			System.out.println("erreur catch : " + e.getMessage());
		}
	}

}
