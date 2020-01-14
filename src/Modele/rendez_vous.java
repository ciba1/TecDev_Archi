package Modele;

import java.sql.Date;
import java.sql.Time;

public class rendez_vous {
	   int idrendez_vous;
	   int idpatient;
	   int idmedecin;
	   Date date;
	   Time heure;
	public rendez_vous(int idrendez_vous, int idpatient, int idmedecin, Date date, Time heure) {
		super();
		this.idrendez_vous = idrendez_vous;
		this.idpatient = idpatient;
		this.idmedecin = idmedecin;
		this.date = date;
		this.heure = heure;
	}
	   
	public rendez_vous() {
	}

	public int getIdrendez_vous() {
		return idrendez_vous;
	}

	public void setIdrendez_vous(int idrendez_vous) {
		this.idrendez_vous = idrendez_vous;
	}

	public int getIdpatient() {
		return idpatient;
	}

	public void setIdpatient(int idpatient) {
		this.idpatient = idpatient;
	}

	public int getIdmedecin() {
		return idmedecin;
	}

	public void setIdmedecin(int idmedecin) {
		this.idmedecin = idmedecin;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Time getHeure() {
		return heure;
	}

	public void setHeure(Time heure) {
		this.heure = heure;
	}
	
	

}
