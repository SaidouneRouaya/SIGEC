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

        System.out.println("remplir les docs");
     /* addDoc (new Doc ((long) 1,"Admin","Demande manuscrite adressee au President de la Commission universitaire nationale"));
        addDoc (new Doc ((long) 2,"Admin","Attestation de travail recente"));
        addDoc (new Doc ((long) 3,"Admin","Copie du diplome de doctorat d Etat ou du titre d habilitation universitaire"));
        addDoc (new Doc ((long) 4,"Admin","Copie de l attestation d equivalence \"Dans le cas d un diplome etranger"));
        addDoc (new Doc ((long) 5,"Admin","Copie de l arrete de maitre de conferences classe A"));
        addDoc (new Doc ((long) 6,"Admin","Curriculum vitae detaille"));
        addDoc (new Doc ((long) 8,"Admin","Copies des decrets et/ou des arretes de nomination a des fonctions ou postes superieurs"));
        addDoc (new Doc ((long) 9,"Admin","Copie de la these de Doctorat"));
        addDoc (new Doc ((long) 10,"Pedagog","Compte rendu des activites pedagogiques et scientifiques depuis la date d acces au grade de maitre de conferences classe A"));
        addDoc (new Doc ((long) 11,"Pedagog","Copies des pages de garde des memoires de magister et/ou theses de doctorats ou doctorats d Etat diriges et soutenus  accompagnees"));
        addDoc (new Doc ((long) 12,"Pedagog","copies des autorisations et des proces verbaux de soutenance"));
        addDoc (new Doc ((long) 13,"Pedagog","Copies des pages de garde des memoires de fin d etudes de masters encadres et soutenus"));
        addDoc (new Doc ((long) 14,"Pedagog","Exemplaires des ouvrages pedagogiques edites"));
        addDoc (new Doc ((long) 15,"Pedagog","Exemplaires des manuels pedagogiques edites"));
        addDoc (new Doc ((long) 16,"Pedagog","Exemplaires  des polycopies edites"));
        addDoc (new Doc ((long) 17,"Pedagog","Publications internationales \"revues, periodiques, ouvrages, actes et proceedings edites"));
        addDoc (new Doc ((long) 18,"Pedagog","Publications nationales \"revues, periodiques, ouvrages, actes et proceedings edites"));
        addDoc (new Doc ((long) 19,"Pedagog","Communications internationales, exemplaires originaux"));
        addDoc (new Doc ((long) 20,"Pedagog","Communications nationales, exemplaires originaux"));
        addDoc (new Doc ((long) 21,"Pedagog","Activites d animation scientifique \"Organisation de colloques, expertise, membre de comite de lecture, chef ou membre d un projet de recherche"));
        addDoc (new Doc ((long) 22,"Complem","Fiche de candidature \"en deux 02 exemplaires"));
*/
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
