<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="tg" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PAgeEvaluation</title>
</head>
<body>


<form action="evaluer.aspx" method="post"  >
		<input type="submit" value="Evaluer" />
	</form>
Ajouter critere :
	<form action="ajouterCritere.aspx" method="post"  >
	
		<table border="1" width="30%">
		<tr>
				<td>ID</td>
				<td><input type="text" name="ID_critere" /></td>
			</tr>
			<tr>
				<td>LIBELLE</td>
				<td><input type="text" name="libelle" /></td>
			</tr>
			<tr>
				<td>PONDERATION</td>
				<td><input type="text" name="ponderation" /></td>
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
			<th>LIBELLE</th>
			<th>PONDERATION</th>
			</tr>
		
		<!--  listeCriteres  -->
		<tg:forEach items="${ListeCriteres}" var="c" >
			<tr>
				<td>${c.ID_critere }</td>
				<td>${c.libelle }</td>
				<td>${c.ponderation }</td>
			</tr>
		</tg:forEach>
	</table>
</body>
</html>