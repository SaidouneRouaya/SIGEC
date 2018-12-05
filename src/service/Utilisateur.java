package service;

import org.jcp.xml.dsig.internal.dom.DOMHMACSignatureMethod;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;


@Entity
@Table(name="utilisateur")
public class Utilisateur implements Serializable {
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;




	public Utilisateur() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id_utilisateur;
	private String nom;
	private String prenom;

	@Column(name="nom_utilisateur")
	private String nomUtilisateur;

	@Column(name="mot_passe")
	private String motdepasse;
	private String grade;
	private String domaine;

	@Column(name="qst_passe")
	private String Qestion_secrete;
	private int droit_acces;
	private String mail;
	private String type;

	@OneToMany
	List<DossierCandidature> listeDossier = new ArrayList<DossierCandidature>();



	public Utilisateur(Long iD_user, String nom, String prenom, String nomUtilisateur, String motdepasse, String grade,
					   String domaine, String qestion_secrete, int droit_acces, String mail, String type) {
		super();
		id_utilisateur = iD_user;
		this.nom = nom;
		this.prenom = prenom;
		this.nomUtilisateur = nomUtilisateur;
		this.motdepasse = motdepasse;
		this.grade = grade;
		this.domaine = domaine;
		Qestion_secrete = qestion_secrete;
		this.droit_acces = droit_acces;
		this.mail = mail;
		this.type = type;
	}
	public Utilisateur( String nom, String prenom, String nomUtilisateur, String motdepasse, String grade,
						String domaine, String qestion_secrete, int droit_acces, String mail, String type) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.nomUtilisateur = nomUtilisateur;
		this.motdepasse = motdepasse;
		this.grade = grade;
		this.domaine = domaine;
		Qestion_secrete = qestion_secrete;
		this.droit_acces = droit_acces;
		this.mail = mail;
		this.type = type;
	}



	public Long getid_utilisateur() {
		return id_utilisateur;
	}




	public void setid_utilisateur(Long iD_user) {
		id_utilisateur = iD_user;
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




	public String getNomUtilisateur() {
		return nomUtilisateur;
	}




	public void setNomUtilisateur(String nomUtilisateur) {
		this.nomUtilisateur = nomUtilisateur;
	}




	public String getMotdepasse() {
		return motdepasse;
	}




	public void setMotdepasse(String motdepasse) {
		this.motdepasse = motdepasse;
	}




	public String getGrade() {
		return grade;
	}




	public void setGrade(String grade) {
		this.grade = grade;
	}




	public String getDomaine() {
		return domaine;
	}




	public void setDomaine(String domaine) {
		this.domaine = domaine;
	}




	public String getQestion_secrete() {
		return Qestion_secrete;
	}




	public void setQestion_secrete(String qestion_secrete) {
		Qestion_secrete = qestion_secrete;
	}




	public int getDroit_acces() {
		return droit_acces;
	}




	public void setDroit_acces(int droit_acces) {
		this.droit_acces = droit_acces;
	}




	public String getMail() {
		return mail;
	}




	public void setMail(String mail) {
		this.mail = mail;
	}




	public String getType() {
		return type;
	}




	public void setType(String type) {
		this.type = type;
	}


}
