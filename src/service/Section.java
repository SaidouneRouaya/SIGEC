package service;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name="section")

public class Section implements Serializable {

    @Id
    private String id_section;
    private String theme_section;


    public Section(String id_section, String theme_section) {
        this.id_section = id_section;
        this.theme_section = theme_section;
    }

    public Section() {
    }

    public String getId_section() {
        return id_section;
    }

    public void setId_section(String id_section) {
        this.id_section = id_section;
    }

    public String getTheme_section() {
        return theme_section;
    }

    public void setTheme_section(String theme_section) {
        this.theme_section = theme_section;
    }

}
