package dao;

import org.hibernate.Session;
import service.Critere;
import util.HibernateUtil;

import javax.persistence.OneToMany;
import java.util.List;

public class CritereImplem implements CritereDAO{

    public void init(){
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
