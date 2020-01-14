package Modele;

public class Utilisateur {
private String email;
private String motPasse;
public Utilisateur(String email, String motPasse) {
	super();
	this.email = email;
	this.motPasse = motPasse;
}
public Utilisateur() {
	super();
	
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getMotPasse() {
	return motPasse;
}
public void setMotPasse(String motPasse) {
	this.motPasse = motPasse;
}

}
