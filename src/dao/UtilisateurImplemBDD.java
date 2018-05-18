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
		System.out.println("remplir les candidats");
	/*	addUser(new Utilisateur("1","user1","nom1","username1","motdepass","Doctorant","Informatique","qs1", 111,"mail1@email.dz","Candidat"));
		addUser(new Utilisateur("2","user2","nom2","username2","motdepass","Doctorant","Informatique","qs1", 111,"mail2@email.dz","Candidat"));
		addUser(new Utilisateur("3","user3","nom3","username3","motdepass","Doctorant","Informatique","qs1", 111,"mail3@email.dz","Candidat"));
		addUser(new Utilisateur("4","user4","nom4","username4","motdepass","Doctorant","Informatique","qs1", 111,"mail4@email.dz","Candidat"));
		addUser(new Utilisateur("5","user5","nom5","username5","motdepass","Doctorant","Informatique","qs1", 111,"mail5@email.dz","Candidat"));
		utilisateursattente.add(new Utilisateur("1","user1","nom1","username1","motdepass","Doctorant","Informatique","qs1", 111,"mail1@email.dz","Candidat"));
		utilisateursattente.add(new Utilisateur("2","user1","nom2","username2","motdepass","Doctorant","Informatique","qs1", 111,"mail2@email.dz","Candidat"));
		utilisateursattente.add(new Utilisateur("3","user1","nom3","username3","motdepass","Doctorant","Informatique","qs1", 111,"mail3@email.dz","Candidat"));*/
	}
	
	@Override
	public void addUser(Utilisateur user) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		utilisateurs.add(user);	
	}

	@Override
	public void deleteUser(String id) {
		/*Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Utilisateur u = (Utilisateur) session.load(Utilisateur.class, id);
		//Utilisateur u = this.getUserByID(id);
		session.delete(u);
		session.getTransaction().commit();*/
	}

	@Override
	public Utilisateur getUserByID(String id) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Utilisateur u = (Utilisateur) session.load(Utilisateur.class, id);
		return u;
	}

	@Override
	public List<Utilisateur> getAllUsers() {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		return  session.createQuery("from Utilisateur ") .list();
	}

	@Override
	public void updateUser(Utilisateur user) {
		// TODO Auto-generated method stub

	}
	@Override
	public List<Utilisateur> getAllCandidats()
	{
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		return session.createQuery("from Utilisateur U where U.type= 'candidat'").list();
		//return utilisateurs;
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
	{
		addUser(new Utilisateur("2","user1","nom2","username2","motdepass","Doctorant","Informatique","qs1", 111,"mail2@email.dz","Candidat"));
		addUser(new Utilisateur("3","user1","nom3","username3","motdepass","Doctorant","Informatique","qs1", 111,"mail3@email.dz","Candidat"));
		addUser(new Utilisateur("4","user1","nom4","username4","motdepass","Doctorant","Informatique","qs1", 111,"mail4@email.dz","Candidat"));
		addUser(new Utilisateur("5","user1","nom5","username5","motdepass","Doctorant","Informatique","qs1", 111,"mail5@email.dz","Candidat"));
	
		return utilisateurs;
	}
}
