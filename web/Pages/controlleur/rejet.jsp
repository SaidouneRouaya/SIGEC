<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sw" uri="http://java.sun.com/jsp/jstl/core" %> <!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>SIGEC | Dossiers rejetés</title>
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
<!-- DataTables -->
<link rel="stylesheet"
	href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
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

		
		<!-- Left side column. contains the logo and sidebar -->
		
			<!-- sidebar: style can be found in sidebar.less -->
			 <!-- contains the header -->
	<%@ include file="../controlleur/header-controlleur.jsp" %>
	
  <!-- sidebar-menu. contains the logo, sidebar, user informations, menu, searchbar -->
  	<%@ include file="../controlleur/menu-controlleur.jsp" %>
			<!-- /.sidebar -->
		

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>Listes des dossiers rejetes</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Acceuil</a></li>
					<li class="active">Dossiers rejetés</li>
				</ol>
			</section>

			<!-- Main content -->
			<form action="">
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
										<th>Annuler rejet</th>

										</tr>
									</thead>
										<tbody>
			<sw:forEach begin="0" end="${ListeDossierRejetes.size()-1}" var="i" >
								
										<tr id="hide">
											<td>${ListeDossierRejetes[i].candidat.nom } ${ListeDossierRejetes[i].candidat.prenom }</td>
											<td>${ListeDossierRejetes[i].datedepot}</td>
											<td><strong><a  href="dossierCandidatureRejete.aspx">Consulter dossier</a></strong></td>
											<td><button onClick="annulerRejet();" type="button" class="btn btn-block btn-danger btn-xs">Annuler</button></td>
											
										</tr>
					</sw:forEach>
										
								</tbody> 
									
								</table>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
						<script type='text/javascript'>
						
							function annulerRejet(){
								
									   document.getElementById("hide").style.display = 'none';	 
							}
							document.getElementById("clickAnnuler").onclick = annulerRejet;
						
						</script>

						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
			</section>
			</form>
			<!-- /.col -->
		</div>
		<!-- /.row -->

		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 2.4.0
		</div>
		<strong>Copyright &copy; 2014-2016 <a
			href="https://adminlte.io">Almsaeed Studio</a>.
		</strong> All rights reserved.
	</footer>


	<!-- Control Sidebar -->

	<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script src="../../bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- DataTables -->
	<script
		src="../../bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="../../bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
	<!-- SlimScroll -->
	<script
		src="../../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="../../bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="../../dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../../dist/js/demo.js"></script>
	<!-- page script -->
	<script>
  $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>
</body>
</html>
