package dao;

import org.hibernate.Session;
import service.Doc;
import service.DossierCandidature;
import service.Utilisateur;
import util.HibernateUtil;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.ArrayList;
import java.util.List;

public class DocImplem implements DocDAO {
    List<Doc> docList = new ArrayList<Doc>();

    public void init(){
    }

    @Override
    public void addDoc(Doc d) {
        Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.save(d);
        session.getTransaction().commit();
        docList.add(d);
        session.close();

    }


    @Override
    public void deleteDoc(int id) {

    }

    @Override
    public Doc getDocByID(int id) {
        Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Doc d = (Doc) session.load(Doc.class, id);

        session.close();
        return d;
    }

    @Override
    public  List<Doc>  getDocByCategory(String cat) {
        Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List<Doc> docs = session.createQuery("from Doc D Where  D.categorie='"+cat+"'").list();

        session.close();
        return docs;
    }

    @Override
    public List<Doc> getAllDoc() {
        Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List<Doc> l= session.createQuery("from Doc") .list();
        session.close();
        return l;
    }

}
