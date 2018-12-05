package service;
import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Entity
@Table(name="dossier")
public class DossierCandidature implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id_dossier;
	private EtatDossier etat;
	private Date datedepot;
	//private final String lien ="C:\\Users\\Tosh\\eclipse-workspace\\SIGEC\\SIGEC\\Accuse_reception.pdf";


	@ManyToOne
	@JoinColumn(name = "id_candidat")
	private Utilisateur candidat ;


	@ManyToOne
	@JoinColumn(name = "id_recep")
	private  Utilisateur receptionniste ;

	@OneToMany
	List<Document> listeDoc = new ArrayList<Document>();


	/*
    @ManyToOne
    @JoinColumn(name="id_section")
    private Section  section ;

*/
	public DossierCandidature( EtatDossier etat, Date datedepot) {
		super();
		this.etat = etat;
		this.datedepot = datedepot;
	}

	public DossierCandidature(EtatDossier etat, Date datedepot, Utilisateur candidat, Utilisateur receptionniste, Section section) {
		this.etat = etat;
		this.datedepot = datedepot;
		this.candidat = candidat;
		this.receptionniste = receptionniste;
		//this.section = section;
	}
	public DossierCandidature(EtatDossier etat, Date datedepot, Utilisateur candidat, Utilisateur receptionniste) {
		this.etat = etat;
		this.datedepot = datedepot;
		this.candidat = candidat;
		this.receptionniste = receptionniste;
	}

	public DossierCandidature(){

	}


	public Long getID_dossier() {
		return id_dossier;
	}

	public void setID_dossier(Long iD_dossier) {
		id_dossier = iD_dossier;
	}

	public EtatDossier getEtat() {
		return etat;
	}

	public void setEtat(EtatDossier etat) {
		this.etat = etat;
	}

	public Date getDatedepot() {
		return datedepot;
	}

	public void setDatedepot(Date datedepot) {
		this.datedepot = datedepot;
	}

	public Utilisateur getCandidat() {
		return candidat;
	}

	public void setCandidat(Utilisateur candidat) {
		this.candidat = candidat;
	}
	/*
    public Receptionniste getReceptionniste() {
        return receptionniste;
    }

    public void setReceptionniste(Receptionniste receptionniste) {
        this.receptionniste = receptionniste;
    }

	public Section getSection() {
		return section;
	}

	public void setSection(Section section) {
		this.section = section;
	}*/
}
