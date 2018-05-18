
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="ResultEval.aspx" method="post">


		<table id="example2" class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>Candidat</th>
					<th>Date candidature</th>
					<th>Cumul des points</th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${CandidatName}</td>
					<td>12/05/2017</td>
					<td>${NoteEval}</td>

				</tr>
			</tbody>

		</table>

	</form>

</body>
</html>