package dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import service.DossierCandidature;
import service.EtatDossier;
import service.Utilisateur;

public class DossierImplem implements DossierDAO{
	private List<DossierCandidature> dossiers = new ArrayList<DossierCandidature>();
	
	public void init(){
		System.out.println("remplir les dossiers");
		addDossier(new DossierCandidature("1",EtatDossier.complet,"25/03/2018"));
		addDossier(new DossierCandidature("2",EtatDossier.complet,"25/03/2018"));
		addDossier(new DossierCandidature("3",EtatDossier.complet,"25/03/2018"));
		addDossier(new DossierCandidature("4",EtatDossier.complet,"18/04/2018"));
		addDossier(new DossierCandidature("5",EtatDossier.complet,"18/04/2018"));
	}
	
	
	@Override
	public void addDossier(DossierCandidature d) {
		// TODO Auto-generated method stub
		dossiers.add(d);
		
	}

	@Override
	public void deleteDossier(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public DossierCandidature getDossierByID(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<DossierCandidature> getAllDossiers() {
		// TODO Auto-generated method stub
		return dossiers;
	}

	@Override
	public void updateDossier(DossierCandidature user) {
		// TODO Auto-generated method stub
		
	}
	public List<DossierCandidature> dossierRejAnnuler()
	{
		
		List<DossierCandidature> dossier = new ArrayList<DossierCandidature>();
		
		dossier.add(new DossierCandidature("6",EtatDossier.rejete,"25/03/2018"));
		dossier.add(new DossierCandidature("4",EtatDossier.rejete,"26/03/2018"));
		dossier.add(new DossierCandidature("7",EtatDossier.rejete,"25/03/2018"));
		return dossier;	
	}
	
	@Override
	public List<DossierCandidature> dossierAttente()
	
			{
		List<DossierCandidature> dossier = new ArrayList<DossierCandidature>();
		dossier.add(new DossierCandidature("1",EtatDossier.incomplet,"25/03/2018"));
		dossier.add(new DossierCandidature("2",EtatDossier.incomplet,"25/03/2018"));
		dossier.add(new DossierCandidature("6",EtatDossier.incomplet,"25/03/2018"));
		dossier.add(new DossierCandidature("4",EtatDossier.incomplet,"26/03/2018"));
		return dossier;
			}
	public List<DossierCandidature> dossierRejete()
		{
List<DossierCandidature> dossier = new ArrayList<DossierCandidature>();
dossier.add(new DossierCandidature("1",EtatDossier.rejete,"25/03/2018"));
dossier.add(new DossierCandidature("6",EtatDossier.rejete,"05/11/2018"));
dossier.add(new DossierCandidature("4",EtatDossier.rejete,"10/08/2018"));
dossier.add(new DossierCandidature("7",EtatDossier.rejete,"25/03/2018"));
return dossier;
	}
	public List<DossierCandidature> dossierValide()
	
	{
List<DossierCandidature> dossier = new ArrayList<DossierCandidature>();
dossier.add(new DossierCandidature("1",EtatDossier.valide,"17/04/2018"));
dossier.add(new DossierCandidature("6",EtatDossier.valide,"18/04/2018"));
dossier.add(new DossierCandidature("4",EtatDossier.valide,"26/05/2018"));
dossier.add(new DossierCandidature("4",EtatDossier.valide,"18/05/2018"));
return dossier;
	}

}
