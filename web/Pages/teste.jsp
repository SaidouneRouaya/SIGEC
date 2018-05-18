<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="tg" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table border="1" width="50%">
		<tr>
			<th>ID</th>
			<th>LIBELLE</th>
			<th>PONDERATION</th>
			 <th>NOTE</th>
			</tr>
		
		<!--  listeCriteres  -->
		<tg:forEach items="${ListeCriteres}" var="c" >
			<tr>
				<td>${c.ID_critere }</td>
				<td>${c.libelle }</td>
				<td>${c.ponderation }</td>
		       <td><input type="text" name="inote" /></td>
			</tr>
		</tg:forEach>
	</table>
<form action="valider.aspx" method="post"  )  >

<input type="submit" value="Valider"  />
		
		
	</form>
	
	<table border="1" width="50%">
		<tr>
			<th>ID</th>
			<th>DATE</th>
			<th>note</th>
			</tr>
		
		<!--  listeCriteres  -->
		<tg:forEach items="${ListeEvaluations}" var="e" >
			<tr>
				<td>${e.ID_evaluation }</td>
				<td>${Dateauj}</td>
				<td>${e.note_cumule }</td>
			</tr>
		</tg:forEach>
	</table>
</body>
</html>