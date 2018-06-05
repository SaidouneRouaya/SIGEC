package service;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.*;


@Entity
@Table(name="evaluation")

public class Evaluation implements Serializable {

	public Evaluation() {
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id_evaluation;
	private Date date_evaluation;
	private int note_cumule;
	@OneToOne
	@JoinColumn(name = "id_dossier")
	private DossierCandidature dossier ;

	@ManyToOne
	@JoinColumn(name = "id_session")
	private SessionEvaluation session;



	//private Utilisateur user;

	//private List<Critere> Grille = new ArrayList<Critere>();
	public Evaluation(Date date , int note){
		//DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		this.date_evaluation=  date;
		this.note_cumule=note;
	}

	public Long getID_evaluation() {
		return id_evaluation;
	}
	/*
        public Evaluation(int iD_evaluation, Date date_evaluation, int note_cumule) {
            super();
            ID_evaluation = iD_evaluation;
            this.date_evaluation = date_evaluation;
            this.note_cumule = note_cumule;
        }
    */
	public void setID_evaluation(Long iD_evaluation) {
		id_evaluation = iD_evaluation;
	}

	public Date getDate_evaluation() {
		return date_evaluation;
	}

	public void setDate_evaluation(Date date_evaluation) {
		this.date_evaluation = date_evaluation;
	}

	public int getNote_cumule() {
		return note_cumule;
	}

	public void setNote_cumule(int note_cumule) {
		this.note_cumule = note_cumule;
	}
	public DossierCandidature getDossier() {
		return dossier;
	}

	public void setDossier(DossierCandidature dossier) {
		this.dossier = dossier;
	}

	public SessionEvaluation getSession() {
		return session;
	}

	public void setSession(SessionEvaluation session) {
		this.session = session;
	}
}
