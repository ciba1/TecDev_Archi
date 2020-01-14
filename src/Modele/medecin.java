package Modele;

public class medecin {
	  private int idmedecin;
	  private String nom;
	  private String prenom;
	  private String adresse;
	  private String specialité;
	  private String telephone;
	 
	  public medecin(int idmedecin,String nom, String prenom, String adresse,String specialité, String telephone) {
		super();
		this.idmedecin = idmedecin;
	   this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.specialité = specialité;
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

	public String getSpecialité() {
		return specialité;
	}

	public void setSpecialité(String specialité) {
		this.specialité = specialité;
	}

	

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	
	  
	  

}
