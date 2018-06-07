package dao;

import org.hibernate.Session;
import service.Critere;
import util.HibernateUtil;

import javax.persistence.OneToMany;
import java.util.List;

public class CritereImplem implements CritereDAO{

    public void init(){
        System.out.println("teste criteres");
        /*addCritere(new Critere("A-1","Années d'enseignement en premier cycle : 01 points/année",3,"Pedagogique"));
        addCritere(new Critere("A-2","Années d'enseignement en graduation : 01 points/année",4,"Pedagogique"));
        addCritere(new Critere("A-3","Années d'enseignement en second cycle (master) : 01 points/année",3,"Pedagogique"));
        addCritere(new Critere("A-4","Années d'enseignement en post-graduation : 01 points/année",3,"Pedagogique"));
        addCritere(new Critere("A-5","Ouvrages pédagogiques édités : 02.5 points/ouvrage",3,"Pedagogique"));
        addCritere(new Critere("A-6","Manuels pédagogiques édités : 02.5 points/manuel",3,"Pedagogique"));
        addCritere(new Critere("A-7","Polycopiés édités : 02.5 points/poly (> à 100 pages)",3,"Pedagogique"));
        addCritere(new Critere("B-1","Mémoires de fin d'études de masters encadrés et soutenus : 02 points/mem 2 premiers . 01 point/3eme mem ",3,"Encadrement"));
        addCritere(new Critere("B-2","Mémoires de magister dirigés et soutenus : 03 points/mem 2 premiers . 01 point/3eme mem",3,"Encadrement"));
        addCritere(new Critere("B-3","thèses de doctorat ou doctorat d'état dirigées et soutenues: 06 points/1er thèse ; 04 points/2eme thèse ; 03 points/3eme thèse  ",3,"Encadrement"));
        addCritere(new Critere("C-1-1","Publications internationales : Revues et périodiques (cond de recevabilité) : 05 points/art ",3,"PAS"));
        addCritere(new Critere("C-1-2","Publications internationales : Ouvrages édités : 05 points/Ouv ",3,"PAS"));
        addCritere(new Critere("C-1-3","Publications internationales : Actes et procedings édités: 04 points/ape ",3,"PAS"));
        addCritere(new Critere("C-2-1","Publications nationales : Revues et périodiques (cond de recevabilité) : 04 points/art ",3,"PAS"));
        addCritere(new Critere("C-2-2","Publications nationales : Ouvrages édités : 03 points/Ouv ",3,"PAS"));
        addCritere(new Critere("C-2-3","Publications nationales : Actes et procedings édités: 03 points/ape ",3,"PAS"));
        addCritere(new Critere("C-3-1","Communications Internationales : 02 points/com",3,"PAS"));
        addCritere(new Critere("C-3-2","Communications nationales : 01 points/com",3,"PAS"));
        addCritere(new Critere("C-4","Responsable ou membre d'un projet de recherche : 04 points/CL ; 03 points/CE ; 02 points/ME",3,"PAS"));
        addCritere(new Critere("C-5","Animations Scientifique (Organisation de colloque,expertise,memebre de comités de lecture ... etc) : 03 points ",3,"PAS"));
        addCritere(new Critere("D-1","Responsabilités adimistratives (Recteur, directeur de centre universitaire , directeur d'école ,vice-recteur , doyen , vice doyen, directeur d'institut ,directeur adjoint d'institut ,chef de département ...etc) : 03 points ",3,"RA"));
        addCritere(new Critere("D-2","présidence d'organes d'évauation pédagogique et scientifique : conseil scientifique , ou comité scientifique : 02 points ",3,"RA"));
*/
    }
    @Override
    public void addCritere(Critere critere) {
        Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.save(critere);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public List<Critere> getAllCriteres() {
        List<Critere> liste;
        Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        liste =session.createQuery("from Critere ") .list();
        session.getTransaction().commit();
        session.close();
        return  liste;
    }
    @Override
    public void deleteCritere(String id){
        Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        String hqlDelete = "delete Critere c where c.id_critere = :id_critere";
        int deletedEntities = session.createQuery( hqlDelete )
                .setString( "id_critere", id)
                .executeUpdate();
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void modifierCritere(String id, int ponderation) {
        Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Integer pond = ponderation;
        String hqlUpdate = "update Critere c set c.ponderation = :ponderation" +
                " where c.id_critere = :id_critere";
        int updatedEntities = session.createQuery( hqlUpdate )
                .setInteger("ponderation", pond)
                .setString("id_critere", id )
                .executeUpdate();
        session.getTransaction().commit();
        session.close();
    }

}
