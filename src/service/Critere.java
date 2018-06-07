package service;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

import javax.persistence.Entity;
import java.io.Serializable;

@Entity
@Table(name="critere")
public class Critere implements Serializable, Comparable<Critere> {
	private static final long serialVersionUID = 1L;


	@Id
	private String id_critere;
	@Column(name="libelle_critere")
	private String libelle;
	private int ponderation;
	private String type_critere;
	public Critere() {
		super();
	}

	public Critere(String iD_critere, String libelle, int ponderation ,String type_critere ) {
		super();
		this.id_critere = iD_critere;
		this.libelle = libelle;
		this.ponderation = ponderation;
		this.type_critere = type_critere;
	}

	public String getId_critere() {
		return id_critere;
	}

	public String getLibelle() {
		return libelle;
	}

	public int getPonderation() {
		return ponderation;
	}

	public String getType_critere() {
		return type_critere;
	}

	public void setId_critere(String id_critere) {
		this.id_critere = id_critere;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public void setPonderation(int ponderation) {
		this.ponderation = ponderation;
	}

	public void setType_critere(String type_critere) {
		this.type_critere = type_critere;
	}

	@Override
	public int compareTo(Critere o) {
		return id_critere.compareTo(o.id_critere);
	}
}
