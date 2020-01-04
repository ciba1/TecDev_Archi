package src;

public class medecin {
	  private int idmedecin;
	  private String login;
	  private String motPasse;
	  private String nom;
	  private String prenom;
	  private String adresse;
	  private String specialité;
	  int age;
	  private String telephone;
	  private String sexe;
	
	  public medecin(int idmedecin, String login, String motPasse, String nom, String prenom, String adresse,
			String specialité, int age, String telephone, String sexe) {
		super();
		this.idmedecin = idmedecin;
		this.login = login;
		this.motPasse = motPasse;
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.specialité = specialité;
		this.age = age;
		this.telephone = telephone;
		this.sexe = sexe;
	}
	  
	  public medecin() {
		  
	  }

	public int getIdmedecin() {
		return idmedecin;
	}

	public void setIdmedecin(int idmedecin) {
		this.idmedecin = idmedecin;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getMotPasse() {
		return motPasse;
	}

	public void setMotPasse(String motPasse) {
		this.motPasse = motPasse;
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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getSexe() {
		return sexe;
	}

	public void setSexe(String sexe) {
		this.sexe = sexe;
	}
	  
	  

}
