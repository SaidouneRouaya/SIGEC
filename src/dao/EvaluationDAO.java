package dao;

import java.util.Date;
import java.util.List;

import service.*;

public interface EvaluationDAO {

	public void createEvaluation(DossierCandidature dossier , SessionEvaluation sess , Date date, int note);
	public void deleteEvaluation(Long id);
	public List<Evaluation> getAllEvaluations();
	public void updateEvaluation(Evaluation evaluation);
	public Evaluation getEvalByID(Long id);
	public List<Critere> getAllCriteres();
	public List<Critere> getAllcriteres_Pedagogique();
	public List<Critere> getAllcriteres_Encadrement();
	public List<Critere> getAllcriteres_PAS();
	public List<Critere> getAllcriteres_RA();
	public void ajouterCritere(Critere c);
	public SessionEvaluation getSessionByID(Long id);
	public List<SessionEvaluation> getAlSessions();
}
