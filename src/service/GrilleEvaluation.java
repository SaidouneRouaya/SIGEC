package service;

import java.util.ArrayList;
import java.util.List;

public class GrilleEvaluation {
	private List<Critere> criteres = new ArrayList<Critere>();

	public GrilleEvaluation(List<Critere> criteres) {
		super();
		this.criteres = criteres;
	}

	public List<Critere> getCriteres() {
		return criteres;
	}

	public void setCriteres(List<Critere> criteres) {
		this.criteres = criteres;
	}
	
}
