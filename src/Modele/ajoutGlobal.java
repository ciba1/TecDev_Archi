package Modele;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class ajoutGlobal {

	public ajoutGlobal() {
		
	}

	static public void  ajmedecin( String nom, String prenom, String adresse, String specialite, String telephone,
			String sexe,String login, String motPasse ,int age) {
		try {
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
			String qr="INSERT INTO medecin(motPasse,nom,prenom,adresse,specialite,age,telephone,sexe,login) VALUES (?,?,?,?,?,?,?,?,?);";
			PreparedStatement ps=con.prepareStatement(qr);
			ps.setString(1,motPasse);
			ps.setString(2,nom);
			ps.setString(3, prenom);
			ps.setString(4,adresse);
			ps.setString(5,specialite);
			ps.setInt(6,age);
			ps.setString(7,telephone);
			ps.setString(8,sexe);
			ps.setString(9,login);
			ps.executeUpdate();
			con.close();} catch (Exception e) {
			e.printStackTrace();
		}
	}
	static public void  ajpatient( String nom, String prenom, String adresse, String dateNaissance, String telephone,
			String sexe,String login, String motPasse ,int age) {
		try {
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
			String qr="INSERT INTO patient (nom,prenom,adresse,age,telephone,sexe,dateNaissance,login,motPasse) VALUES (?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(qr);
			ps.setString(1,nom);
			ps.setString(2,prenom);
			ps.setString(3,adresse);
			ps.setInt(4,age);
			ps.setString(5,telephone);
			ps.setString(6,sexe);
			ps.setString(7,dateNaissance);
			ps.setString(8,login);
			ps.setString(9,motPasse);
			
			ps.executeUpdate();
			con.close();} catch (Exception e) {
			e.printStackTrace();}
		}
	static public void  upmedecin( String nom, String prenom, String adresse, String specialite, String telephone,
			String sexe,String login, String motPasse ,int age,int id) {
	try {
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
		String qr="UPDATE medecin SET motPasse='?',nom='?',prenom='?',adresse='?',specialité='?',age=?,telephone='?',sexe='?',login='?' WHERE idmedecin='?';";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1,motPasse);
		ps.setString(2,nom);
		ps.setString(3, prenom);
		ps.setString(4,adresse);
		ps.setString(5,specialite);
		ps.setInt(6,age);
		ps.setString(7,telephone);
		ps.setString(8,sexe);
		ps.setString(9,login);
		ps.setInt(10,id);
		ps.executeUpdate();
		con.close();} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();}
	}
	
	static public void  uppatient( String nom, String prenom, String adresse, String dateNaissance, String telephone,
			String sexe,String login, String motPasse ,int age,int id ) {
		try {
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
			String qr="UPDATE patient SET nom='?',prenom='?',adresse='?',age=?,telephone='?',sexe='?',dateNaissance='?',login='?',motPasse='?' WHERE idpatient='?';";
			PreparedStatement ps=con.prepareStatement(qr);
			ps.setString(1,nom);
			ps.setString(2,prenom);
			ps.setString(3,adresse);
			ps.setInt(4,age);
			ps.setString(5,telephone);
			ps.setString(6,sexe);
			ps.setString(7,dateNaissance);
			ps.setString(8,login);
			ps.setString(9,motPasse);
			ps.setInt(10,id);
			
			ps.executeUpdate();
			con.close();} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
}
	static public void delmedecin(int id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
			String qr="DELETE FROM medecin WHERE idmedecin='?' ;";
			PreparedStatement ps=con.prepareStatement(qr);
			ps.setInt(1,id);
			ps.executeUpdate();
			con.close();}catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();}
	}

	static public void delpatient(int id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
			String qr="DELETE FROM patient WHERE idpatient='?';";
			PreparedStatement ps=con.prepareStatement(qr);
			ps.setInt(1,id);
			ps.executeUpdate();
			con.close();}catch (Exception e) {
				e.printStackTrace();
			}
	}
	}
