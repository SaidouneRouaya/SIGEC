<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
			        <%@ taglib prefix="tg" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>SIGEC | Mon compte - upload</title>
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
<!-- Morris chart -->
<link rel="stylesheet" href="bower_components/morris.js/morris.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="bower_components/jvectormap/jquery-jvectormap.css">
<!-- Date Picker -->
<link rel="stylesheet"
	href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">


<link rel="stylesheet"
	href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">






<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
<style>
.example-modal .modal {
	position: relative;
	top: auto;
	bottom: auto;
	right: auto;
	left: auto;
	display: block;
	z-index: 1;
}

.example-modal .modal {
	background: transparent !important;
}
</style>

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

		<header class="main-header">
			<!-- Logo -->
			<a href="index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>S</b>GC</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>SIGEC</b></span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->

						<!-- Notifications: style can be found in dropdown.less -->

						<!-- Tasks: style can be found in dropdown.less -->


						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="dist/img/DSC_0403.JPG" class="user-image" alt="User Image">
								<span class="hidden-xs">Compte Candidat</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img
									src="../../dist/img/DSC_0403.JPG" class="img-circle"
									alt="User Image">

									<p>Nom Prénom - Candidat</p></li>

								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a href="#" class="btn btn-default btn-flat">Profil</a>
									</div>
									<div class="pull-right">
										<a href="#" class="btn btn-default btn-flat">Déconnexion</a>
									</div>
								</li>
							</ul></li>
						<!-- Control Sidebar Toggle Button -->
						<li><a href="#" data-toggle="control-sidebar"><i
								class="fa fa-gears"></i></a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">

				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu" data-widget="tree">
					<li class="header">MENU</li>
					<li><a href="upload_candidat.aspx"><i
							class="fa fa-cloud-upload"></i>Remplir mon dossier  </a></li>
					<li><a href="moncompte.aspx"> <i
							class="fa fa-tags"></i> Etat de mon dossier</a></li>
				</ul>



			</section>

		</aside>
		<div class="content-wrapper padding">
			<section class="content-header no-pandding">
				<h1>
					Liste des documents <small></small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Acceuil</a></li>
					<li class="active">Liste des documents</li>
				</ol>
			</section>
<section class="content">
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#tab_1" data-toggle="tab">Dossier administratif</a></li>
					<li><a href="#tab_2" data-toggle="tab">Dossier pedagogique et scientifique</a></li>
					<li><a href="#tab_3" data-toggle="tab">Dossier complementaire</a></li>

					<li class="pull-right"><a href="#" class="text-muted"><i
							class="fa fa-gear"></i></a></li>
				</ul>

				<div class="tab-content padding">
					<div class="tab-pane active" id="tab_1">
						<ul class="todo-list">
							<li><span class="handle"> <i class="fa fa-ellipsis-v"></i>
									<i class="fa fa-ellipsis-v"></i>
							</span> <span class="text"> Demande manuscrite adressee au President de la Commission universitaire nationale  </span> <small id="s11_hide"
								class="label label-danger"><i class="fa fa-ban"></i> non
									completé </small>
								<div id="a11_masquer" style="display: none">
									<small class="label label-success pull "><i
										class="fa fa-check-square"></i> completé </small>
								</div>

								<div class="tools">
									<button type="button" class="btn btn-success xs"
										data-toggle="modal" data-target="#modal-one">Ajouter
										document</button>
								</div>
								<div class="tools">
									<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
								</div></li>

							<li><span class="handle"> <i class="fa fa-ellipsis-v"></i>
									<i class="fa fa-ellipsis-v"></i>
							</span> <span class="text">  Attestation de travail recente </span> <small id="s12_hide"
								class="label label-danger"><i class="fa fa-ban"></i> non
									completé </small>
								<div id="a12_masquer" style="display: none">
									<small class="label label-success"><i
										class="fa fa-check-square"></i> completé </small>
								</div>

								<div class="tools">
									<button type="button" class="btn btn-success xs"
										data-toggle="modal" data-target="#modal-two">Ajouter
										document</button>
								</div>
								<div class="tools">
									<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
								</div></li>

						</ul>



						<div class="modal modal-success fade" id="modal-one">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title">Ajouter document</h4>
									</div>
									<div class="modal-body">


										<section>
											<form name="firstForm" action="Ajout.do"
												enctype="multipart/form-data" method="POST">

												<div style="text-align: center;"></div>
												<h2
													style="color: white; background-color: transparent !important; text-align: center;">Nouveau
													document</h2>

												<input type="file" name="file1"><br>
												<p>Description du fichier :</p>
												<input type="text" name="desc"/>
											</form>
										</section>



									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-outline pull-left"
											data-dismiss="modal">Fermer</button>
										<button type="button" class="btn btn-outline"
											data-dismiss="modal" value="Masquer"
											onclick="masquer_div('a11_masquer','s11_hide'); ">Sauvegarder</button>
									</div>
								</div>

							</div>

						</div>


						<div class="modal modal-success fade" id="modal-two">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title">Ajouter document</h4>
									</div>
									<div class="modal-body">


										<section>
											<form name="firstForm" action="Ajout.do"
												enctype="multipart/form-data" method="POST">

												<div style="text-align: center;"></div>
												<h2
													style="color: white; background-color: transparent !important; text-align: center;">Nouveau
													document</h2>

												<input type="file" name="file1"><br>
												<p>Description du fichier :</p>
												<textarea name="desc"></textarea>
											</form>
										</section>



									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-outline pull-left"
											data-dismiss="modal">Fermer</button>
										<button type="button" class="btn btn-outline"
											data-dismiss="modal" value="Masquer"
											onclick="masquer_div('a12_masquer','s12_hide'); ">Sauvegarder</button>
									</div>
								</div>

							</div>

						</div>

					</div>




					<div class="tab-pane" id="tab_2">
						<ul class="todo-list">
							<li><span class="handle"> <i class="fa fa-ellipsis-v"></i>
									<i class="fa fa-ellipsis-v"></i>
							</span> <span class="text"> Exemplaires des ouvrages pedagogiques edites. </span> <small id="s11_hide"
								class="label label-danger"><i class="fa fa-ban"></i> non
									completé </small>
								<div id="a11_masquer" style="display: none">
									<small class="label label-success"><i
										class="fa fa-check-square"></i> completé</small>
								</div>

								<div class="tools">
									<button type="button" class="btn btn-success xs"
										data-toggle="modal" data-target="#modal-one">Ajouter
										document</button>
								</div>
								<div class="tools">
									<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
								</div></li>

							<li><span class="handle"> <i class="fa fa-ellipsis-v"></i>
									<i class="fa fa-ellipsis-v"></i>
							</span> <span class="text"> copies des autorisations et des proces verbaux de soutenance. </span> <small id="s12_hide"
								class="label label-danger"><i class="fa fa-ban"></i> non
									completé </small>
								<div id="a12_masquer" style="display: none">
									<small class="label label-success"><i
										class="fa fa-check-square"></i> completé </small>
								</div>

								<div class="tools">
									<button type="button" class="btn btn-success xs"
										data-toggle="modal" data-target="#modal-one">Ajouter
										document</button>
								</div>
								<div class="tools">
									<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
								</div></li>

						</ul>



						<div class="modal modal-success fade" id="modal-one">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title">Ajouter document</h4>
									</div>
									<div class="modal-body">


										<section>
											<form name="firstForm" action="Ajout.do"
												enctype="multipart/form-data" method="POST">

												<div style="text-align: center;"></div>
												<h2
													style="color: white; background-color: transparent !important; text-align: center;">Nouveau
													document</h2>

												<input type="file" name="file1"><br>
												<p>Description du fichier :</p>
												<textarea name="desc"></textarea>
											</form>
										</section>



									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-outline pull-left"
											data-dismiss="modal">Fermer</button>
										<button type="button" class="btn btn-outline"
											data-dismiss="modal" value="Masquer"
											onclick="masquer_div('a11_masquer','s11_hide'); ">Sauvegarder</button>
									</div>
								</div>

							</div>

						</div>


						<div class="modal modal-success fade" id="modal-two">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title">Ajouter document</h4>
									</div>
									<div class="modal-body">


										<section>
											<form name="firstForm" action="Ajout.do"
												enctype="multipart/form-data" method="POST">

												<div style="text-align: center;"></div>
												<h2
													style="color: white; background-color: transparent !important; text-align: center;">Nouveau
													document</h2>

												<input type="file" name="file1"><br>
												<p>Description du fichier :</p>
												<textarea name="desc"></textarea>
											</form>
										</section>



									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-outline pull-left"
											data-dismiss="modal">Fermer</button>
										<button type="button" class="btn btn-outline"
											data-dismiss="modal" value="Masquer"
											onclick="masquer_div('a12_masquer','s12_hide'); ">Sauvegarder</button>
									</div>
								</div>

							</div>

						</div>

					</div>

					<div class="tab-pane" id="tab_3">
						<ul class="todo-list">
							<li><span class="handle"> <i class="fa fa-ellipsis-v"></i>
									<i class="fa fa-ellipsis-v"></i>
							</span> <span class="text"> Fiche de candidature "en deux 02 exemplaires" </span> <small id="s11_hide"
								class="label label-danger"><i class="fa fa-ban"></i> non
									completé </small>
								<div id="a11_masquer" style="display: none">
									<small class="label label-success"><i
										class="fa fa-check-square"></i> completé </small>
								</div>

								<div class="tools">
									<button type="button" class="btn btn-success xs"
										data-toggle="modal" data-target="#modal-one">Ajouter
										document</button>
								</div>
								<div class="tools">
									<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
								</div></li>

							<li><span class="handle"> <i class="fa fa-ellipsis-v"></i>
									<i class="fa fa-ellipsis-v"></i>
							</span> <span class="text">  Attestation complémentaire </span> <small id="s12_hide"
								class="label label-danger"><i class="fa fa-ban"></i> non
									completé </small>
								<div id="a12_masquer" style="display: none">
									<small class="label label-success"><i
										class="fa fa-check-square"></i> completé </small>
								</div>

								<div class="tools">
									<button type="button" class="btn btn-success xs"
										data-toggle="modal" data-target="#modal-one">Ajouter
										document</button>
								</div>
								<div class="tools">
									<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
								</div></li>

						</ul>



						<div class="modal modal-success fade" id="modal-one">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title">Ajouter document</h4>
									</div>
									<div class="modal-body">


										<section>
											<form name="firstForm" action="Ajout.do"
												enctype="multipart/form-data" method="POST">

												<div style="text-align: center;"></div>
												<h2
													style="color: white; background-color: transparent !important; text-align: center;">Nouveau
													document</h2>

												<input type="file" name="file1"><br>
												<p>Description du fichier :</p>
												<textarea name="desc"></textarea>
											</form>
										</section>



									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-outline pull-left"
											data-dismiss="modal">Fermer</button>
										<button type="button" class="btn btn-outline"
											data-dismiss="modal" value="Masquer"
											onclick="masquer_div('a11_masquer','s11_hide'); ">Sauvegarder</button>
									</div>
								</div>

							</div>

						</div>


						<div class="modal modal-success fade" id="modal-two">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title">Ajouter document</h4>
									</div>
									<div class="modal-body">


										<section>
											<form name="firstForm" action="Ajout.do"
												enctype="multipart/form-data" method="POST">

												<div style="text-align: center;"></div>
												<h2
													style="color: white; background-color: transparent !important; text-align: center;">Nouveau
													document</h2>

												<input type="file" name="file1"><br>
												<p>Description du fichier :</p>
												<textarea name="desc"></textarea>
											</form>
										</section>



									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-outline pull-left"
											data-dismiss="modal">Fermer</button>
										<button type="button" class="btn btn-outline"
											data-dismiss="modal" value="Masquer"
											onclick="masquer_div('a12_masquer','s12_hide'); ">Sauvegarder</button>
									</div>
								</div>

							</div>

						</div>

					</div>
					<!-- /.tab-pane -->
				</div>
				<!-- /.tab-content -->
			</div>
			</section>
			<!-- /.box -->
			<!-- /.content -->
		</div>


		<!-- /.box -->
		<!-- /.content -->

		<!-- /.content-wrapper 
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 2.4.0
			</div>
			<strong>Copyright &copy; 2014-2016 <a
				href="https://adminlte.io">Almsaeed Studio</a>.
			</strong> All rights reserved.
		</footer>


		<!-- Tab panes -->


		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>

		<!-- ./wrapper -->





		<!-- jQuery 3 -->
		<script src="bower_components/jquery/dist/jquery.min.js"></script>
		<!-- jQuery UI 1.11.4 -->
		<script src="bower_components/jquery-ui/jquery-ui.min.js"></script>
		<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
		<script>
			$.widget.bridge('uibutton', $.ui.button);
		</script>
		<!-- Bootstrap 3.3.7 -->
		<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- Morris.js charts -->
		<script src="bower_components/raphael/raphael.min.js"></script>
		<script src="bower_components/morris.js/morris.min.js"></script>
		<!-- Sparkline -->
		<script
			src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
		<!-- jvectormap -->
		<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
		<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
		<!-- jQuery Knob Chart -->
		<script src="bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
		<!-- daterangepicker -->
		<script src="bower_components/moment/min/moment.min.js"></script>
		<script
			src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
		<!-- datepicker -->
		<script
			src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
		<!-- Bootstrap WYSIHTML5 -->
		<script
			src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
		<!-- Slimscroll -->
		<script
			src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
		<!-- FastClick -->
		<script src="bower_components/fastclick/lib/fastclick.js"></script>
		<!-- AdminLTE App -->
		<script src="dist/js/adminlte.min.js"></script>
		<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
		<script src="dist/js/pages/dashboard.js"></script>
		<!-- AdminLTE for demo purposes -->
		<script src="dist/js/demo.js"></script>
		<script src="bower_components/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap 3.3.7 -->
		<script
			src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- FastClick -->
		<script src="bower_components/fastclick/lib/fastclick.js"></script>
		<!-- AdminLTE App -->
		<script src="dist/js/adminlte.min.js"></script>
		<!-- AdminLTE for demo purposes -->
		<script src="dist/js/demo.js"></script>
		<script>

			function masquer_div(id_red,id_green) {
				if (document.getElementById(id_red).style.display == 'none') {
					document.getElementById(id_green).style.display = 'none';
					document.getElementById(id_red).style.display = 'block';
					
					
				} else {
					document.getElementById(id_red).style.display = 'none';
				}
			}
		</script>
</body>
</html>
