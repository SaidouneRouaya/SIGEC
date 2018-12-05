package dao;

import service.Document;
import service.DossierCandidature;
import service.Utilisateur;

import java.util.List;

public interface DocumentDAO {


    public void addDocument(Document d) ;
    public void deleteDocument(int id);
    public Document getDocumentByID(int id);
    public List<Document> getDocumentByCategory(String cat);
    public List<Document> getDocumentByDossierByCategory(DossierCandidature dossier, String cat);
    public Document getDocumentByDossierByID(DossierCandidature dossier, int id);
    public void documentDispo(Long id);
    public List<Document> getAllDocuments();
}
