<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PageTEst</title>
</head>
<body>
	
	
	recherche : 
	<form action="rechercherUtilisateur.aspx" method="post"  >
		ID : <input type="text" name="ID_user" value="${ID_user}" /> 
		<input type="submit" value="Afficher" />
	</form>
	<hr />
	
	supprimer : 
	<form action="supprimerUtilisateur.aspx" method="post"  >
		ID : <input type="text" name="ID_user" value="${ID_user}" /> 
		<input type="submit" value="supprimer" />
	</form>
	<hr />
	
	Ajouter :
	<form action="ajouterUtilisateur.aspx" method="post"  >
	
		<table border="1" width="30%">
		
			<tr>
				<td>Nom</td>
				<td><input type="text" name="nom" /></td>
			</tr>
			<tr>
				<td>Prenom</td>
				<td><input type="text" name="prenom" /></td>
			</tr>
			<tr>
				<td>Nom Utilisateur</td>
				<td><input type="text" name="nomUtilisateur" /></td>
			</tr>
		
			<tr>
				<td>Mot de passe</td>
				<td><input type="text" name="motdepasse" /></td>
			</tr>
			
			<tr>
				<td>GRADE</td>
				<td><input type="text" name="grade" /></td>
			</tr>
		<tr>
				<td>DOMAINE</td>
				<td><input type="text" name="domaine" /></td>
			</tr>
		<tr>
				<td>QUESTION SECRETE</td>
				<td><input type="text" name="Qestion_secrete" /></td>
			</tr>
		<tr>
				<td>DROIT D ACCES</td>
				<td><input type="text" name="droit_acces" /></td>
			</tr>
			<tr>
				<td>MAIL</td>
				<td><input type="text" name="mail" /></td>
			</tr>
			<tr>
				<td>TYPE</td>
				<td><input type="text" name="type" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="ajotuer"/> 
				</td>
			</tr>
		</table>
	</form>
	<hr />
	<br />
	<table border="1" width="50%">
		<tr>
			<th>ID</th>
			<th>NOM</th>
			<th>PRENOM</th>
			<th>Nom Utilisateur</th>
			<th>MOT DE  PASSE</th>
			<th>GRADE</th>
			<th>DOMAINE</th>
			<th>DROIT D ACCES</th>
			<th>MAIL</th>
			<th>TYPE</th>
			<th>Option</th>
		</tr>
		
		<!--  listeUtilisateurs  -->
		<c:forEach items="${ListeUtilisateurs}" var="u" >
			<tr>
				<td>${u.id_utilisateur }</td>
				<td>${u.nom }</td>
				<td>${u.prenom }</td>
				<td>${u.nomUtilisateur }</td>
				<td>${u.motdepasse }</td>
			    <td>${u.grade }</td>
				<td>${u.domaine }</td>
				<td>${u.droit_acces}</td>
				<td>${u.mail }</td>
				<td>${u.type }</td>
		   
			</tr>
		</c:forEach>
	</table>
</body>
</html>