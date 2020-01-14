package Modele;

public class medicament {
	private String lable,effets;
	private double prix;
	public String getLable() {
		return lable;
	}
	public void setLable(String lable) {
		this.lable = lable;
	}
	public String getEffets() {
		return effets;
	}
	public void setEffets(String effets) {
		this.effets = effets;
	}
	public medicament(String lable, String effets, double prix) {
		super();
		this.lable = lable;
		this.effets = effets;
		this.prix = prix;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
}
