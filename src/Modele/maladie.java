package Modele;

public class maladie {
	private String nom;
	private String discription;
	public maladie(String nom, String discription) {
	
		this.nom = nom;
		this.discription = discription;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public maladie(String nom) {
		super();
		this.nom = nom;
	}
	
	public maladie() {
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}
	
}
