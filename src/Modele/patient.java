package Modele;

public class patient {
	  private int idpatient;
	  private String nom;
	  private String prenom;
	  private String adresse;
	  int age;
	  private String telephone;
	  private String dateNaissance;
	  private String login;
	  private String motPasse;
	////////////////////////////////////////
	  public patient(int idpatient, String nom, String prenom, String adresse, int age, String telephone,
			String dateNaissance, String login, String motPasse) {
		super();
		this.idpatient = idpatient;
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.age = age;
		this.telephone = telephone;
	
		this.dateNaissance = dateNaissance;
		this.login = login;
		this.motPasse = motPasse;
	}
	
	public patient() {
		
	}

	public int getIdpatient() {
		return idpatient;
	}

	public void setIdpatient(int idpatient) {
		this.idpatient = idpatient;
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


	public String getDateNaissance() {
		return dateNaissance;
	}

	public void setDateNaissance(String dateNaissance) {
		this.dateNaissance = dateNaissance;
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
	
	
	  
	  

}
