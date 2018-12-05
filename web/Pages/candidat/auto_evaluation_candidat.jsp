<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tg" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<%@ include file="../header-candidat.jsp"%>
		<!-- contains the header -->

		<!-- sideba r-menu. contains the logo, sidebar, user informations, menu, searchbar -->
		<%@ include file="../menu-candidat.jsp"%>
		<!-- sidebar-menu. contains the logo, sidebar, user informations, menu, searchbar -->
		<div class="content-wrapper padding">
			<section class="content-header no-pandding">
			<h1>
				Auto-évaluation <small></small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Acceuil</a></li>
				<li class="active">Auto-évaluation</li>
			</ol>
			</section>
			<section class="content">
			<h2 class="page-header"></h2>
			<form action="ResultEvalCandidat.aspx" method="post">
				<div class="row">
					<div class="col-md-12">

						<div class="nav-tabs-custom">
							<ul class="nav nav-tabs">


								<li class="active"><a href="#tab_1" data-toggle="tab">Activités
										Pédagogiques</a></li>
								<li><a href="#tab_2" data-toggle="tab">Encadrements</a></li>
								<li><a href="#tab_3" data-toggle="tab">Production et
										activité scientifique</a></li>
								<li><a href="#tab_4" data-toggle="tab">Responsabilités
										administratives</a></li>
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
											<tg:forEach begin="0"
												end="${ListeCriteres_Pedagogique.size() -1}" var="i">
												<tr>
													<td>${ListeCriteres_Pedagogique[i].ID_critere }</td>
													<td>${ListeCriteres_Pedagogique[i].libelle }</td>
													<td>${ListeCriteres_Pedagogique[i].ponderation}</td>
													<td><input type="text" value="2" name="${noteLP[i]}" />
													</td>



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
											<tg:forEach begin="0"
												end="${ListeCriteres_Encadrement.size() -1}" var="i">
												<tr>
													<td>${ListeCriteres_Encadrement[i].ID_critere }</td>
													<td>${ListeCriteres_Encadrement[i].libelle }</td>
													<td>${ListeCriteres_Encadrement[i].ponderation}</td>
													<td><input type="text" value="1" name="noteLE${i}" />
													</td>



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
											<tg:forEach begin="0"
												end="${ListeCriteres_Production_activités_scientifique.size() -1}"
												var="i">
												<tr>
													<td>${ListeCriteres_Production_activités_scientifique[i].ID_critere }</td>
													<td>${ListeCriteres_Production_activités_scientifique[i].libelle }</td>
													<td>${ListeCriteres_Production_activités_scientifique[i].ponderation}</td>
													<td><input type="text" value="1" name="noteLPAS${i}" />
													</td>



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
											<tg:forEach begin="0"
												end="${ListeCriteres_Responsabilités_administratives.size() -1}"
												var="i">
												<tr>
													<td>${ListeCriteres_Responsabilités_administratives[i].ID_critere }</td>
													<td>${ListeCriteres_Responsabilités_administratives[i].libelle }</td>
													<td>${ListeCriteres_Responsabilités_administratives[i].ponderation}</td>
													<td><input type="text" value="2" name="noteLRA${i}" />
													</td>



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
							<button type="submit" class="btn btn-block btn-success">Valider</button>
						</div>
						<div class="col-md-2">
							<button type="button" class="btn btn-block btn-danger">Enregistrer
								le brouillon</button>
						</div>

					</div>
				</div>

			</form>
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
		<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- FastClick -->
		<script src="bower_components/fastclick/lib/fastclick.js"></script>
		<!-- AdminLTE App -->
		<script src="dist/js/adminlte.min.js"></script>
		<!-- AdminLTE for demo purposes -->
		<script src="dist/js/demo.js"></script>
	</div>
</body>
</html>
