package dao;

import java.util.List;

import service.Utilisateur;

public interface UtilisateurDAO {

	public void addUser(Utilisateur user);
	public void deleteUser(String id);
	public Utilisateur getUserByID(Long id);
	public List<Utilisateur> getAllUsers();
	public void updateUser(Utilisateur user);
	public List<Utilisateur> getAllCandidats();
	public List<Utilisateur> getAllCandidatsAttente();
	public void deleteCandiatAttente(int i);
	public void addUserAttente(Utilisateur u);
	public List<Utilisateur> getAllCandidats2();
	public Utilisateur getUserByEmail(String email);
}
