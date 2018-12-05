<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ taglib prefix="tg" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SIGEC | Liste des r�sultats</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta
			content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
			name="viewport">
	<!-- Bootstrap 3.3.7 -->
	<link rel="stylesheet"
		  href="bower_components/bootstrap/dist/css/bootstrap.min.css">
	<!-- Font Awesome -->
	<link rel="stylesheet"
		  href="bower_components/font-awesome/css/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet"
		  href="bower_components/Ionicons/css/ionicons.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
	<!-- AdminLTE Skins. Choose a skin from the css/skins
        folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

	<!-- Google Font -->
	<link rel="stylesheet"
		  href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body class="hold-transition skin-yellow sidebar-mini">
<div class="wrapper">

	<!-- contains the header -->
	<%@ include file="../header-membrecomm.jsp"%>
	<!-- contains the header -->


	<!-- sidebar-menu. contains the logo, sidebar, user informations, menu, searchbar -->
	<%@ include file="../menu-membrecomm.jsp"%>
	<!-- sidebar-menu. contains the logo, sidebar, user informations, menu, searchbar -->

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Header content -->
		<section class="content-header">
			<h1>
			r�sultat d'�valuation De ${Evaluation.dossier.candidat.nom} ${Evaluation.dossier.candidat.prenom}
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Accueil</a></li>
				<li class="active">R�sultat</li>
			</ol>
		</section>

		<!-- Main content -->

		<section class="content">
			<form action="ListeCandEval.aspx " method="post" >
			<div class="row">
				<div class="col-xs-12">
					<div class="box">

						<!-- /.box-header -->
						<div class="box-body">
							<table id="example2" class="table table-bordered table-hover">
								<thead>
								<tr>
									<th>Candidat</th>
									<th>Date candidature</th>
									<th>Date D evaluation</th>
									<th>Cumul des points</th>

								</tr>
								</thead>
								<tbody>
									<tr>
										<td>${Evaluation.dossier.candidat.nom}</td>
										<td><fmt:formatDate value="${Evaluation.dossier.datedepot}" pattern="yyyy-MM-dd " /></td>
										<td><fmt:formatDate value="${Evaluation.date_evaluation}" pattern="yyyy-MM-dd " /></td>
										<td>${Evaluation.note_cumule}</td>
									</tr>
								</tbody>

							</table>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->


					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-2"></div>
				<div class="col-md-2">
					<button type="submit" class="btn btn-block btn-success" >OK</button>
				</div>
			</div>
			</form>
		</section>
	</div>


</div>
<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Slimscroll -->
<script
		src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>


</body>
</html>

</body>
</html>