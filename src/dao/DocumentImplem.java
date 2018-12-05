package dao;

import org.hibernate.Session;

import service.Document;
import service.DossierCandidature;
import service.Utilisateur;
import util.HibernateUtil;

import java.util.ArrayList;
import java.util.List;

public class DocumentImplem implements DocumentDAO {


    List<Document> documentList = new ArrayList<Document>();
    public void init (){};



    @Override
    public void addDocument(Document d) {
        Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.save(d);
        session.getTransaction().commit();
        documentList.add(d);
        session.close();
    }

    @Override
    public void documentDispo(Long id) {
        Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();

        String hqlUpdate = "update Document d set d.disponible =:dispo" +
                " where d.id_document = :id_document";
        int updatedEntities = session.createQuery( hqlUpdate )
                .setString("dispo", "1")
                .setLong("id_document", id )
                .executeUpdate();
        session.getTransaction().commit();
        session.close();
    }
    @Override
    public void deleteDocument(int id) {

    }



    @Override
    public Document getDocumentByID(int id) {
        Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Document d = (Document) session.load(Document.class, id);

        session.close();
        return d;
    }

    @Override
    public List<Document> getDocumentByCategory(String cat) {
        Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List<Document> Documents = session.createQuery("from Document D Where  D.categorie='"+cat+"'").list();

        session.close();
        return Documents;
    }
    @Override
    public List<Document> getDocumentByDossierByCategory(DossierCandidature dossier, String cat) {
        Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List<Document> Documents = session.createQuery("from Document D Where  D.categorie=:cat and D.dossier.id_dossier=:id_dossier")
                .setString("cat",cat).setLong("id_dossier",dossier.getID_dossier()).list();
        session.close();
        return Documents;
    }

    @Override
    public Document getDocumentByDossierByID (DossierCandidature dossier, int id) {
        Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List<Document> Documents = session.createQuery("from Document D Where  D.id_doc=:id and D.dossier.id_dossier=:id_dossier")
                .setInteger("id",id).setLong("id_dossier",dossier.getID_dossier()).list();
        session.close();
        return Documents.get(0);
    }
    @Override
    public List<Document> getAllDocuments() {
        Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List<Document> l= session.createQuery("from Document") .list();
        session.close();
        return l;
    }
    
    
}
