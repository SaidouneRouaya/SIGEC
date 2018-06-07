<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	        <%@ taglib prefix="tg" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>SIGEC | Evaluation du candidat</title>
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
				Grille d'évaluation <small>Monsieur:      ${Candidat.nom}   ${Candidat.prenom}  </small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Accueil</a></li>
				<li class="active">Grille d'évaluation</li>
			</ol>
			</section>

			<!-- Main content -->

			<section class="content">
			<h2 class="page-header"></h2>
			<form action="ResultEval.aspx?IdCand = ${Candidat.id_utilisateur} " method="post" >
			    <input type="hidden" name ="IdCand" value ="${Candidat.id_utilisateur}" />
				<input type="hidden" name ="IdDossier" value ="${dossier.ID_dossier}" />

				<div class="row">
				<div class="col-md-12">
				
					<div class="nav-tabs-custom">
						<ul class="nav nav-tabs">
						
						
						
							<li class="active"><a href="#tab_1" data-toggle="tab">Activités
									Pédagogiques</a></li>
							<li><a href="#tab_2" data-toggle="tab">Encadrements</a></li>
							<li><a href="#tab_3" data-toggle="tab">Production et
									activité scientifique</a></li>
							<li><a href="#tab_4" data-toggle="tab">Responsabilités administratives</a></li>
							<li class="pull-right"><a href="#" class="text-muted"><i
									class="fa fa-gear"></i></a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tab_1">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>ID</th>
											<th>Critère</th>
											<th>Pondération</th>
											<th>Note</th>


										</tr>
									</thead>
									<tbody>
									
										  <tg:forEach begin="0" end="${ListeCriteres_Pedagogique.size() -1}" var="i" >
		      									<tr>
													<td>${ListeCriteres_Pedagogique[i].id_critere}</td>
													<td>${ListeCriteres_Pedagogique[i].libelle }</td>
													<td>${ListeCriteres_Pedagogique[i].ponderation}</td>
													<td> <input type="text" value="2" name="noteLP${i}" /> </td>
													
		       
		       
												</tr>
											</tg:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th>ID</th>
											<th>Critère</th>
											<th>Pondération</th>
											<th>Note</th>
										</tr>
									</tfoot>
								</table>

							</div>
							<!-- /.tab-pane -->
							<div class="tab-pane" id="tab_2">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>ID</th>
											<th>Critère</th>
											<th>Pondération</th>
											<th>Note</th>


										</tr>
									</thead>
									<tbody>
										 <tg:forEach begin="0" end="${ListeCriteres_Encadrement.size() -1}" var="i" >
		      									<tr>
													<td>${ListeCriteres_Encadrement[i].id_critere }</td>
													<td>${ListeCriteres_Encadrement[i].libelle }</td>
													<td>${ListeCriteres_Encadrement[i].ponderation}</td>
													<td> <input type="text" value="1" name= "noteLE${i}" /> </td>
													
		       
		       
												</tr>
											</tg:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th>ID</th>
											<th>Critère</th>
											<th>Pondération</th>
											<th>Note</th>
										</tr>
									</tfoot>
								</table>
							</div>

							<!-- /.tab-pane -->
							<div class="tab-pane" id="tab_3">

								<table id="example2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>ID</th>
											<th>Critère</th>
											<th>Pondération</th>
											<th>Note</th>


										</tr>
									</thead>
									<tbody>
										<tg:forEach begin="0" end="${ListeCriteres_Production_activites_scientifique.size() -1}" var="i" >
		      									<tr>
													<td>${ListeCriteres_Production_activites_scientifique[i].id_critere }</td>
													<td>${ListeCriteres_Production_activites_scientifique[i].libelle }</td>
													<td>${ListeCriteres_Production_activites_scientifique[i].ponderation}</td>
													<td> <input type="text" value="1" name="noteLPAS${i}" /> </td>
													
		       
		       
												</tr>
											</tg:forEach>

									</tbody>
									<tfoot>
										<tr>
											<th>ID</th>
											<th>Critère</th>
											<th>Pondération</th>
											<th>Note</th>
										</tr>
									</tfoot>
								</table>

							</div>
							<!-- /.tab-pane -->
							<div class="tab-pane" id="tab_4">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>ID</th>
											<th>Critère</th>
											<th>Pondération</th>
											<th>Note</th>


										</tr>
									</thead>
									<tbody>
										 <tg:forEach begin="0" end="${ListeCriteres_Responsabilites_administratives.size() -1}" var="i" >
		      									<tr>
													<td>${ListeCriteres_Responsabilites_administratives[i].id_critere }</td>
													<td>${ListeCriteres_Responsabilites_administratives[i].libelle }</td>
													<td>${ListeCriteres_Responsabilites_administratives[i].ponderation}</td>
												<td> <input type="text" value="2" name="noteLRA${i}" /> </td>
													
		       
		       
												</tr>
											</tg:forEach>

									</tbody>
									<tfoot>
										<tr>
											<th>ID</th>
											<th>Critère</th>
											<th>Pondération</th>
											<th>Note</th>
										</tr>
									</tfoot>
								</table>

							</div>
						</div>
						<!-- /.tab-content -->
					</div>
                
				</div>

				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-2"></div>
					<div class="col-md-2">
						<button type="submit" class="btn btn-block btn-success" >Valider</button>
					</div>
					<div class="col-md-2">
						<button type="button" class="btn btn-block btn-danger">Enregistrer le brouillon</button>
					</div>

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