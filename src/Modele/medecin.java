package Modele;

public class medecin {
	  private int idmedecin;
	  private String nom;
	  private String prenom;
	  private String adresse;
	  private String specialit�;
	  private String telephone;
	 
	  public medecin(int idmedecin,String nom, String prenom, String adresse,String specialit�, String telephone) {
		super();
		this.idmedecin = idmedecin;
	   this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.specialit� = specialit�;
		this.telephone = telephone;
		}
	  
	  public medecin() {
		  
	  }

	public int getIdmedecin() {
		return idmedecin;
	}

	public void setIdmedecin(int idmedecin) {
		this.idmedecin = idmedecin;
	}


	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getSpecialit�() {
		return specialit�;
	}

	public void setSpecialit�(String specialit�) {
		this.specialit� = specialit�;
	}

	

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	
	  
	  

}