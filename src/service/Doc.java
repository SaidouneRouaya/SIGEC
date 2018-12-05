package service;



import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;

@Entity
public class Doc implements Serializable{
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id_document;
    private String categorie;
    private String libelle;




    public Doc() {
    }

    public Doc(Long id_document, String categorie, String libelle) {
        this.id_document = id_document;
        this.categorie = categorie;
        this.libelle = libelle;
    }

    public Long getId_document() {
        return id_document;
    }

    public void setId_document(Long id_document) {
        this.id_document = id_document;
    }

    public String getCategorie() {
        return categorie;
    }

    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }
}
