package service;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Document implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id_document;
    private String type;
    private String lien;
    private String disponible;
    private String categorie;
    private String libelle;
    private Long id_doc;

    @ManyToOne(cascade = CascadeType.ALL )
    @JoinColumn(name = "id_dossier",nullable = true)
    private DossierCandidature dossier;

    public Document(String type, String lien, String disponible, String categorie, Long id_doc,String libelle, DossierCandidature dossier) {
        this.type = type;
        this.lien = lien;
        this.disponible = disponible;
        this.categorie = categorie;
        this.id_doc = id_doc;
        this.libelle=libelle;
        this.dossier = dossier;
    }

    public Document() {
    }

    public void setId_document(Long id_document) {
        this.id_document = id_document;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setLien(String lien) {
        this.lien = lien;
    }

    public void setDisponible(String disponible) {
        this.disponible = disponible;
    }

    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }

    public void setId_doc(Long id_doc) {
        this.id_doc = id_doc;
    }

    public void setDossier(DossierCandidature dossier) {
        this.dossier = dossier;
    }

    public Long getId_document() {
        return id_document;
    }

    public String getType() {
        return type;
    }

    public String getLien() {
        return lien;
    }

    public String getDisponible() {
        return disponible;
    }

    public String getCategorie() {
        return categorie;
    }

    public Long getId_doc() {
        return id_doc;
    }

    public DossierCandidature getDossier() {
        return dossier;
    }
}