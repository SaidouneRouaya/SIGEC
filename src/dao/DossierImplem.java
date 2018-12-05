package dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import service.DossierCandidature;
import service.EtatDossier;
import service.Utilisateur;
import util.HibernateUtil;

public class DossierImplem implements DossierDAO{
	private List<DossierCandidature> dossiers = new ArrayList<DossierCandidature>();
	
	public void init(){
		System.out.println("remplir les dossiers");
		/*addDossier(new DossierCandidature(EtatDossier.complet,new Date()));
		addDossier(new DossierCandidature(EtatDossier.complet,new Date()));
		addDossier(new DossierCandidature(EtatDossier.complet,new Date()));
		addDossier(new DossierCandidature(EtatDossier.complet,new Date()));
		addDossier(new DossierCandidature(EtatDossier.complet,new Date()));*/
	}

	@Override
	public void addDossier(DossierCandidature d) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(d);
		session.getTransaction().commit();
		session.close();
		dossiers.add(d);
		
	}

	@Override
	public void deleteDossier(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public DossierCandidature getDossierByID(Long id) {
		// TODO Auto-generated method stub
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		DossierCandidature c = (DossierCandidature) session.load(DossierCandidature.class, id);
		c.getID_dossier();
		session.getTransaction().commit();
		session.close();
		return c;
	}

	@Override
	public List<DossierCandidature> getAllDossiers() {
		// TODO Auto-generated method stub
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List<DossierCandidature> liste = session.createQuery("from DossierCandidature").list()
				/*session.createSQLQuery("select * from dossier").list()*/;
        session.getTransaction().commit();
        session.close();
        return liste;
	}

	@Override
	public List<DossierCandidature> getAllDossierComplet()
	{
		List<DossierCandidature> liste;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		liste = session.createQuery("from DossierCandidature D where D.etat= '0'").list();
		session.getTransaction().commit();
		session.close();
		return liste;
	}

	@Override
	public List<DossierCandidature> getAllDossierEvalue()
	{
		List<DossierCandidature> liste;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		liste = session.createQuery("from DossierCandidature D where D.etat= '5'").list();
		session.getTransaction().commit();
		session.close();
		return liste;
	}
	@Override
	public void SetDossierEval(Long id ,int etat) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();

		String hqlUpdate = "update DossierCandidature D set D.etat = :Etatdos" +
				" where D.id_dossier = :id_dossier";
		int updatedEntities = session.createQuery( hqlUpdate )
				.setLong("id_dossier", id )
				.setInteger("Etatdos", etat)
				.executeUpdate();
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public void updateDossier(DossierCandidature user) {
		// TODO Auto-generated method stub
		
	}
	public List<DossierCandidature> dossierRejAnnuler()
	{
		List<DossierCandidature> dossier = new ArrayList<DossierCandidature>();
		dossier.add(new DossierCandidature(EtatDossier.rejete,new Date()));
		dossier.add(new DossierCandidature(EtatDossier.rejete,new Date()));
		dossier.add(new DossierCandidature(EtatDossier.rejete,new Date()));
		return dossier;
	}
	
	@Override
	public List<DossierCandidature> dossierAttente()
	
			{
				List<DossierCandidature> liste;
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();
				session.beginTransaction();
				liste = session.createQuery("from DossierCandidature D where D.etat= '1'").list();
				session.getTransaction().commit();
				session.close();
				return liste;
			}
	public List<DossierCandidature> dossierRejete()
		{
List<DossierCandidature> dossier = new ArrayList<DossierCandidature>();
dossier.add(new DossierCandidature(EtatDossier.rejete,new Date()));
dossier.add(new DossierCandidature(EtatDossier.rejete,new Date()));
dossier.add(new DossierCandidature(EtatDossier.rejete,new Date()));
dossier.add(new DossierCandidature(EtatDossier.rejete,new Date()));
return dossier;
	}
	public List<DossierCandidature> dossierValide()
	
	{
List<DossierCandidature> dossier = new ArrayList<DossierCandidature>();
dossier.add(new DossierCandidature(EtatDossier.valide,new Date()));
dossier.add(new DossierCandidature(EtatDossier.valide,new Date()));
dossier.add(new DossierCandidature(EtatDossier.valide,new Date()));
dossier.add(new DossierCandidature(EtatDossier.valide,new Date()));
return dossier;
	}
	@Override
	public List <DossierCandidature> getDossierByUser(Long id_cand) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List <DossierCandidature> d = session.createQuery(
				"from DossierCandidature D where D.candidat.id_utilisateur=:id_candidat")
				.setLong("id_candidat",id_cand).list();
		/*session.createSQLQuery("select * from dossier").list()*/;
		session.getTransaction().commit();
		session.close();
		return d;
	}
}
