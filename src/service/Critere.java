package service;

import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Entity;
/*
@Entity
@Table(name="critere")*/
public class Critere {
	//@Id
	private String ID_critere;
	private String libelle;
	private int ponderation;
	
	public Critere() {
		super();
	}

	public Critere(String iD_critere, String libelle, int ponderation) {
		super();
		ID_critere = iD_critere;
		this.libelle = libelle;
		this.ponderation = ponderation;
	}
	
	public String getID_critere() {
		return ID_critere;
	}
	public void setID_critere(String iD_critere) {
		ID_critere = iD_critere;
	}
	public String getLibelle() {
		return libelle;
	}
	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}
	public int getPonderation() {
		return ponderation;
	}
	public void setPonderation(int ponderation) {
		this.ponderation = ponderation;
	}
	
}
