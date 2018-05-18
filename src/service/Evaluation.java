package service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Entity;
/*
@Entity
@Table(name="evaluation")
*/
public class Evaluation {

	//@Id
	private int ID_evaluation;
	private Date date_evaluation;
	private int note_cumule;
	private GrilleEvaluation grille;
	private Utilisateur user;

	//private List<Critere> Grille = new ArrayList<Critere>();
	public Evaluation(int id,Date date,GrilleEvaluation grille , int note){
      //DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
      this.ID_evaluation=id;
      this.date_evaluation=  date;
      this.grille=grille;
      this.note_cumule=note;
	}

	public int getID_evaluation() {
		return ID_evaluation;
	}

	public Evaluation(int iD_evaluation, Date date_evaluation, int note_cumule) {
		super();
		ID_evaluation = iD_evaluation;
		this.date_evaluation = date_evaluation;
		this.note_cumule = note_cumule;
	}

	public void setID_evaluation(int iD_evaluation) {
		ID_evaluation = iD_evaluation;
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
}
