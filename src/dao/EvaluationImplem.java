package dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import service.Critere;
import service.Evaluation;
import service.GrilleEvaluation;
import service.Utilisateur;
import util.HibernateUtil;

public class EvaluationImplem implements EvaluationDAO {
	private List<Evaluation> evaluations = new ArrayList<Evaluation>();
	private List<Critere> criteres_Pedagogique = new ArrayList<Critere>();
	private List<Critere> criteres_Encadrement = new ArrayList<Critere>();
	private List<Critere> criteres_PAS = new ArrayList<Critere>();
	private List<Critere> criteres_RA= new ArrayList<Critere>();

	private List<Critere> criteres = new ArrayList<Critere>();




	public void init(){
		System.out.println("teste evaluation");

	}

	@Override
	public void createEvaluation(Date date, int note) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Evaluation  ev  =new Evaluation(date,note);
		session.beginTransaction();
		session.save(ev);
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public void deleteEvaluation(Long id) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Evaluation> getAllEvaluations() {
		// TODO Auto-generated method stub
		return evaluations;
	}
	@Override
	public List<Critere> getAllcriteres_Pedagogique() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		this.criteres_Pedagogique = session.createQuery("from Critere C where C.type_critere= 'Pedagogique'").list();
		session.getTransaction().commit();
		session.close();
		return this.criteres_Pedagogique;
	}
	@Override
	public List<Critere> getAllcriteres_Encadrement() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		this.criteres_Encadrement = session.createQuery("from Critere C where C.type_critere= 'Encadrement'").list();
		session.getTransaction().commit();
		session.close();
		return this.criteres_Encadrement;
	}
	@Override
	public List<Critere> getAllcriteres_PAS() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		this.criteres_PAS = session.createQuery("from Critere C where C.type_critere= 'PAS'").list();
		session.getTransaction().commit();
		session.close();
		return this.criteres_PAS;
	}
	@Override
	public List<Critere> getAllcriteres_RA() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		this.criteres_RA = session.createQuery("from Critere C where C.type_critere= 'RA'").list();
		session.getTransaction().commit();
		session.close();
		return this.criteres_RA;
	}
	@Override
	public List<Critere> getAllCriteres() {
		return this.criteres;
	}


	@Override
	public void updateEvaluation(Evaluation evaluation) {
		// TODO Auto-generated method stub

	}

	@Override
	public Evaluation getEvalByID(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void ajouterCritere(Critere c) {
		// TODO Auto-generated method stub
		criteres.add(c);
	}

}
