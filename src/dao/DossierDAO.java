package dao;

import java.util.List;

import service.DossierCandidature;


public interface DossierDAO {
	public void addDossier(DossierCandidature d);
	public void deleteDossier(String id);
	public DossierCandidature getDossierByID(Long id);
	public List<DossierCandidature> getAllDossiers();
	public void updateDossier(DossierCandidature user);
	public List<DossierCandidature>  dossierAttente();
	public List<DossierCandidature>  dossierRejete();
	public List<DossierCandidature>  dossierValide();
	public List<DossierCandidature> dossierRejAnnuler();
	public List<DossierCandidature> getAllDossierComplet();
	public List<DossierCandidature> getAllDossierEvalue();
	public void SetDossierEval(Long id, int etat);
	public List <DossierCandidature> getDossierByUser(Long id_cand);
}
