package dao;

import service.Critere;

import java.util.List;

public interface CritereDAO {
    public void addCritere(Critere critere);
    public List<Critere> getAllCriteres();
    public void deleteCritere(String id);
    public void modifierCritere(String id,int ponderation);
}
