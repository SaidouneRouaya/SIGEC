package service;

import java.util.Date;

public class DossierCandidature {
	private String ID_dossier;
	
	private EtatDossier etat;
	private String datedepot;
	private final String lien ="C:\\Users\\Tosh\\eclipse-workspace\\SIGEC\\SIGEC\\Accuse_reception.pdf";
	
	

	public DossierCandidature(String iD_dossier, EtatDossier etat, String datedepot) {
		super();
		ID_dossier = iD_dossier;
		this.etat = etat;
		this.datedepot = datedepot;
	}

	public DossierCandidature(){

	}

	public String getLien() {
		return lien;
	}

	public String getID_dossier() {
		return ID_dossier;
	}

	public void setID_dossier(String iD_dossier) {
		ID_dossier = iD_dossier;
	}

	public EtatDossier getEtat() {
		return etat;
	}

	public void setEtat(EtatDossier etat) {
		this.etat = etat;
	}

	public String getDatedepot() {
		return datedepot;
	}

	public void setDatedepot(String datedepot) {
		this.datedepot = datedepot;
	}
	

}
