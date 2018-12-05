<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SIGEC | Liste des dossiers en attente</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
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
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body class="hold-transition skin-yellow sidebar-mini">
<div class="wrapper">

  <!-- contains the header -->
	<%@ include file="../header-receptionniste.jsp" %>
  <!-- contains the header -->


  <!-- sidebar-menu. contains the logo, sidebar, user informations, menu, searchbar -->
  	<%@ include file="../menu-receptionniste.jsp" %>
  <!-- sidebar-menu. contains the logo, sidebar, user informations, menu, searchbar -->

<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>Listes des en attente</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Acceuil</a></li>
					<li class="active">Dossiers en attentes</li>
				</ol>

			</section>

			<!-- Main content -->
			<section class="content">
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
											<th>Consulter dossier</th>
											<th>Complété par le candidat</th>
											<th>Accusé de réception</th>

										</tr>
									</thead>
									<tbody>
									<c:forEach begin="0" end="${ListeCandidats.size()-1}" var="i" >
									<form action="checklist.aspx" method="post">
										<tr>
											<td>${ListeCandidats[i].nom} ${ListeCandidats[i].prenom }</td>
											<td>${ListeDossiers[i].datedepot}</td>
											<td>
												<input type="submit" name="Voir checklist">
												<input type="hidden" name ="id_cand" value="${ListeCandidats[i].getid_utilisateur()}">
											</td>
											<td>
												<div class="row">
												<div class="col-md-8">
												
													<a type="button" href="completerDossier.aspx" class="btn btn-block btn-success btn-xs">Complété</a>
												</div>
												
											
											<!--  <div class="col-md-6">
												<button type="button" class="btn btn-block btn-danger btn-xs">Non</button>
											</div>-->
											</div>
											</td>
											<td><a href="C:\Users\start\eclipse-workspace\SIGEC\SIGEC\Accusé_réception_incomplet.pdf" target = "_blank">Imprimer l'accusé de réception</a></td>

										</tr>
									</form>
									</c:forEach>

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
			</section>
			<!-- /.col -->
		</div>
		<!-- /.row -->
  


</div>
<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Slimscroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>


</body>
</html>