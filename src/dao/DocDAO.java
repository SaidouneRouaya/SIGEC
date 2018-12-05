package dao;

import service.Doc;
import service.DossierCandidature;

import java.util.List;

public interface DocDAO {
        public void addDoc(Doc d) ;
        public void deleteDoc(int id);
        public Doc getDocByID(int id);
        public  List<Doc>  getDocByCategory(String cat);
        public List<Doc> getAllDoc();

}
