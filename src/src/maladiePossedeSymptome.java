package src;

public class maladiePossedeSymptome {

	String nomMaladie;
	String nomSymptome;
	public String getNomMaladie() {
		return nomMaladie;
	}
	public void setNomMaladie(String nomMaladie) {
		this.nomMaladie = nomMaladie;
	}
	public String getNomSymptome() {
		return nomSymptome;
	}
	public void setNomSymptome(String nomSymptome) {
		this.nomSymptome = nomSymptome;
	}
	public maladiePossedeSymptome() {
		
		
	}
	public maladiePossedeSymptome(String nomMaladie, String nomSymptome) {
		
		this.nomMaladie = nomMaladie;
		this.nomSymptome = nomSymptome;
	}
	
}
