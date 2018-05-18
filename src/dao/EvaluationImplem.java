package dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import service.Critere;
import service.Evaluation;
import service.GrilleEvaluation;
import service.Utilisateur;

public class EvaluationImplem implements EvaluationDAO {
	private List<Evaluation> evaluations = new ArrayList<Evaluation>();
	private List<Critere> criteres_Pedagogique = new ArrayList<Critere>();
	private List<Critere> criteres_Encadrement = new ArrayList<Critere>();
	private List<Critere> criteres_PAS = new ArrayList<Critere>();
	private List<Critere> criteres_RA= new ArrayList<Critere>();

	private List<Critere> criteres = new ArrayList<Critere>();


	 public void init(){
	    	System.out.println("teste evaluation");
	    	
	    	criteres_Pedagogique.add(new Critere("A-1","Années d'enseignement en premier cycle : 01 points/année",3));
	    	criteres_Pedagogique.add(new Critere("A-2","Années d'enseignement en graduation : 01 points/année",4));
	    	criteres_Pedagogique.add(new Critere("A-3","Années d'enseignement en second cycle (master) : 01 points/année",3));
	    	criteres_Pedagogique.add(new Critere("A-4","Années d'enseignement en post-graduation : 01 points/année",3));
	    	criteres_Pedagogique.add(new Critere("A-5","Ouvrages pédagogiques édités : 02.5 points/ouvrage",3));
	    	criteres_Pedagogique.add(new Critere("A-6","Manuels pédagogiques édités : 02.5 points/manuel",3));
	    	criteres_Pedagogique.add(new Critere("A-7","Polycopiés édités : 02.5 points/poly (> à 100 pages)",3));

	    	
	    	criteres_Encadrement.add(new Critere("B-1","Mémoires de fin d'études de masters encadrés et soutenus : 02 points/mem 2 premiers . 01 point/3eme mem ",3));
	    	criteres_Encadrement.add(new Critere("B-2","Mémoires de magister dirigés et soutenus : 03 points/mem 2 premiers . 01 point/3eme mem",3));
	    	criteres_Encadrement.add(new Critere("B-3","thèses de doctorat ou doctorat d'état dirigées et soutenues: 06 points/1er thèse ; 04 points/2eme thèse ; 03 points/3eme thèse  ",3));
	    	
	    	
	    	criteres_PAS.add(new Critere("C-1-1","Publications internationales : Revues et périodiques (cond de recevabilité) : 05 points/art ",3));
	    	criteres_PAS.add(new Critere("C-1-2","Publications internationales : Ouvrages édités : 05 points/Ouv ",3));
		    criteres_PAS.add(new Critere("C-1-3","Publications internationales : Actes et procedings édités: 04 points/ape ",3));
		    criteres_PAS.add(new Critere("C-2-1","Publications nationales : Revues et périodiques (cond de recevabilité) : 04 points/art ",3));
		    criteres_PAS.add(new Critere("C-2-2","Publications nationales : Ouvrages édités : 03 points/Ouv ",3));
		    criteres_PAS.add(new Critere("C-2-3","Publications nationales : Actes et procedings édités: 03 points/ape ",3));
		    criteres_PAS.add(new Critere("C-3-1","Communications Internationales : 02 points/com",3));
		    criteres_PAS.add(new Critere("C-3-2","Communications nationales : 01 points/com",3));
		 	criteres_PAS.add(new Critere("C-4","Responsable ou membre d'un projet de recherche : 04 points/CL ; 03 points/CE ; 02 points/ME",3));
		 	criteres_PAS.add(new Critere("C-5","Animations Scientifique (Organisation de colloque,expertise,memebre de comités de lecture ... etc) : 03 points ",3));

		 	criteres_RA.add(new Critere("D-1","Responsabilités adimistratives (Recteur, directeur de centre universitaire , directeur d'école ,vice-recteur , doyen , vice doyen, directeur d'institut ,directeur adjoint d'institut ,chef de département ...etc) : 03 points ",3));
		 	criteres_RA.add(new Critere("D-2","présidence d'organes d'évauation pédagogique et scientifique : conseil scientifique , ou comité scientifique : 02 points ",3));






	    }
	@Override
	public void createEvaluation(Long id ,Date date,GrilleEvaluation grille, int note) {
		// TODO Auto-generated method stub
		
	//evaluations.add(new Evaluation(id,date,grille,note));
		
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
		return this.criteres_Pedagogique;
	}
	@Override
	public List<Critere> getAllcriteres_Encadrement() {
		return this.criteres_Encadrement;
	}
	@Override
	public List<Critere> getAllcriteres_PAS() {
		return this.criteres_PAS;
	}
	@Override
	public List<Critere> getAllcriteres_RA() {
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
