package service;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;


@Entity
@Table(name="session")

public class SessionEvaluation implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id_session ;
    private Date date_session;
    private int  nb_candidat;





    public SessionEvaluation() {
    }

    public SessionEvaluation( Date date_session, int nb_candidat) {


        this.date_session = date_session;
        this.nb_candidat = nb_candidat;
    }

    public Long getId_session() {
        return id_session;
    }

    public void setId_session(Long id_session) {
        this.id_session = id_session;
    }

    public Date getDate_session() {
        return date_session;
    }

    public void setDate_session(Date date_session) {
        this.date_session = date_session;
    }

    public int getNb_candidat() {
        return nb_candidat;
    }

    public void setNb_candidat(int nb_candidat) {
        this.nb_candidat = nb_candidat;
    }


}
