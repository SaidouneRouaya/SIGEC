package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.ObjectNotFoundException;
import org.hibernate.Session;

import service.Utilisateur;
import util.HibernateUtil;

public class UtilisateurImplemBDD implements UtilisateurDAO {
	private List<Utilisateur> utilisateurs = new ArrayList<Utilisateur>();
	List<Utilisateur> utilisateursattente = new ArrayList<Utilisateur>();

	public void init(){
	}
	
	@Override
	public void addUser(Utilisateur user) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		utilisateurs.add(user);
		session.close();
	}

	@Override
	public void deleteUser(Long id) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		String hqlDelete = "delete Utilisateur c where c.id_utilisateur = :id_user";
		int deletedEntities = session.createQuery( hqlDelete )
				.setLong( "id_user", id)
				.executeUpdate();
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public Utilisateur getUserByID(Long id) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Utilisateur u = (Utilisateur) session.createQuery("from Utilisateur u where u.id_utilisateur = :id").setLong("id",id).list().get(0);
		session.getTransaction().commit();
		session.close();
		return u;
	}

    @Override
    public Utilisateur getUserByEmail(String email) {
        Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Utilisateur u ;
        List<Utilisateur> list = session.createQuery("from Utilisateur u where u.mail = '" + email+"'").list();
        if (list.size()>0) {
			u = (Utilisateur) list.get(0);
		}
		else
			u=null;
		session.getTransaction().commit();
        session.close();
        return u;
    }

	@Override
	public List<Utilisateur> getAllUsers() {
		List<Utilisateur> liste;
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		liste =session.createQuery("from Utilisateur ") .list();
		session.getTransaction().commit();
		session.close();
		return  liste;
	}

	@Override
	public void updateUser(Utilisateur user) {
		// TODO Auto-generated method stub

	}
	@Override
	public List<Utilisateur> getAllCandidats()
	{
		List<Utilisateur> liste;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		liste = session.createQuery("from Utilisateur U where U.type= 'Candidat'").list();
		session.getTransaction().commit();
		session.close();
		return liste;
	}
	
	@Override
	public List<Utilisateur> getAllCandidatsAttente()
	{
		return utilisateursattente;
	}
	
	@Override
	public void deleteCandiatAttente(int i)
	{
		utilisateursattente.remove(i);
	}
	
	@Override
	public void addUserAttente(Utilisateur u)
	{
		utilisateursattente.add(u);
	}
	
	
	public List<Utilisateur> getAllCandidats2()
	{	return utilisateurs;
	}

	@Override
	public int getNbCandidats()
	{
		return getAllCandidats().size();
	}
}
