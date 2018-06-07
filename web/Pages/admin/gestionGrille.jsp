<%@ taglib prefix="tg" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>SIGEC | Gestion de la grille</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="../../bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="../../bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
    folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">

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
		<%@ include file="../headerAdmin.jsp"%>
		<!-- contains the header -->
		<!-- sidebar-menu. contains the logo, sidebar, user informations, menu, searchbar -->
		<%@ include file="../menu-admin.jsp"%>
		<!-- sidebar-menu. contains the logo, sidebar, user informations, menu, searchbar -->
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Header content -->
			<section class="content-header">
			<h1>
				Gestion de la grille
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Accueil</a></li>
				<li class="active">Etablissement de la grille</li>
			</ol>
			</section>

			<!-- Main content -->

			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
				<li class="active"><a href="#tab_1" data-toggle="tab">Activités Pédagogiques</a></li>
				<li><a href="#tab_2" data-toggle="tab">Encadrements</a></li>
				<li><a href="#tab_3" data-toggle="tab">Production et activité scientifique</a></li>
				<li><a href="#tab_4" data-toggle="tab">Responsabilités administratives</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
							<!-- /.box-header -->
							<div class="box-body">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>Identifiant</th>
											<th>Critere</th>
											<th>Ponderation</th>
											<th>Modifier</th>
											<th>Supprimer</th>
										</tr>
									</thead>
									<tbody>
									<tg:forEach begin="0" end="${criteres_AP.size()-1}" var="i" >
										<tr>
											<form method="post" action="modifierCriteres.aspx">
												<td>${criteres_AP[i].id_critere}</td>
											<td>${criteres_AP[i].libelle}</td>
												<input type="hidden" name="id_critere" value="${criteres_AP[i].id_critere}">
											<td><input size="3" type="text" value="${criteres_AP[i].ponderation}" name="${criteres_AP[i].id_critere}" /></td>
											<td>
												<input type="submit" name="modifier" value="Modifier" class="btn btn-block btn-warning">
											</td>
												<td><input type="submit" name="supprimer" value="Supprimer"  class="btn btn-block btn-danger">
											</td>
											</form>
										</tr>
									</tg:forEach>
									</tbody>

								</table>
							</div>
							<!-- /.box-body -->
              </div>
              <!-- /.tab-pane -->
				<div class="tab-pane" id="tab_2">
							<!-- /.box-header -->
							<div class="box-body">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
									<tr>
										<th>Identifiant</th>
										<th>Critere</th>
										<th>Ponderation</th>
										<th>Modifier</th>
										<th>Supprimer</th>
									</tr>
									</thead>
									<tbody>
									<tg:forEach begin="0" end="${criteres_E.size()-1}" var="i" >
										<tr>
											<form method="post" action="modifierCriteres.aspx">
												<td>${criteres_E[i].id_critere}</td>
												<input type="hidden" name="id_critere" value="${criteres_E[i].id_critere}">
												<td>${criteres_E[i].libelle}</td>
												<td><input size="3" type="text" value="${criteres_E[i].ponderation}" name="${criteres_E[i].id_critere}" /></td>
												<td>
													<input type="submit" name="modifier" value="Modifier" class="btn btn-block btn-warning">

													</td>
												<td><input type="submit" name="supprimer" value="Supprimer"  class="btn btn-block btn-danger"></td>
											</form>
										</tr>
									</tg:forEach>
									</tbody>

								</table>
							</div>
							<!-- /.box-body -->

				</div>
              <!-- /.tab-pane -->

              <!-- /.tab-pane -->
				<div class="tab-pane" id="tab_3">
							<!-- /.box-header -->
							<div class="box-body">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
									<tr>
										<th>Identifiant</th>
										<th>Critere</th>
										<th>Ponderation</th>
										<th>Modifier</th>
										<th>Supprimer</th>
									</tr>
									</thead>
									<tbody>
									<tg:forEach begin="0" end="${criteres_PAS.size()-1}" var="i" >
										<tr>
											<form method="post" action="modifierCriteres.aspx">
												<td>${criteres_PAS[i].id_critere}</td>
												<td>${criteres_PAS[i].libelle}</td>
												<input type="hidden" name="id_critere" value="${criteres_PAS[i].id_critere}">
												<td><input size="3" type="text" value="${criteres_PAS[i].ponderation}" name="${criteres_PAS[i].id_critere}" /></td>
												<td>
													<input type="submit" name="modifier" value="Modifier" class="btn btn-block btn-warning">
												</td>
												<td>
													<input type="submit" name="supprimer" value="Supprimer"  class="btn btn-block btn-danger">
												</td>
											</form>
										</tr>
									</tg:forEach>
									</tbody>

								</table>
							</div>
							<!-- /.box-body -->
				</div>
              <!-- /.tab-pane -->
				<div class="tab-pane" id="tab_4">
							<!-- /.box-header -->
							<div class="box-body">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
									<tr>
										<th>Identifiant</th>
										<th>Critere</th>
										<th>Ponderation</th>
										<th>Modifier</th>
										<th>Supprimer</th>
									</tr>
									</thead>
									<tbody>
									<tg:forEach begin="0" end="${criteres_RA.size()-1}" var="i" >
										<tr>
											<form method="post" action="modifierCriteres.aspx">
												<td>${criteres_RA[i].id_critere}</td>
												<td>${criteres_RA[i].libelle}</td>
												<input type="hidden" name="id_critere" value="${criteres_RA[i].id_critere}">
												<td><input size="3" type="text" value="${criteres_RA[i].ponderation}" name="${criteres_RA[i].id_critere}" /></td>
												<td>
													<input type="submit" name="modifier" value="Modifier" class="btn btn-block btn-warning">
												</td>
												<td>
													<input type="submit" name="supprimer" value="Supprimer"  class="btn btn-block btn-danger">
												</td>
											</form>
										</tr>
									</tg:forEach>
									</tbody>

								</table>
							</div>
							<!-- /.box-body -->
				</div>
            </div>
            <!-- /.tab-content -->
          </div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
<div class="col-xs-4">

</div>
				<div class="col-xs-3 center-block">
           			<!--<a href="#" class="btn btn-primary btn-block margin-bottom">Partager avec commission</a>-->
           			<button type="button" class="btn btn-block btn-success" data-toggle="modal" data-target="#modal-default">
               Ajouter un critere
              </button>
              <div class="modal fade in" id="modal-default" style="display: none; padding-right: 17px;">
          <div class="modal-dialog">
			  <form method="post" action="ajoutercritere.aspx">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Ajouter critère</h4>

              </div>
				<div class="modal-body">

						<label for="critere">Identifiant</label>
						<input type="text" class="form-control" id="id_critere" name ="id_critere" placeholder="Entrer l'identifiant">

				</div>
              <div class="modal-body">

                  <label for="critere">Libellé</label>
                  <input type="text" class="form-control" id="critere" name ="critere" placeholder="Entrer le critere">

              </div>
              <div class="modal-body">

                  <label for="ponderation">Pondération</label>
                  <input type="text" class="form-control" id="ponderation" name="ponderation" placeholder="seuil de ponderation">

              </div>
				<div class="modal-body">

						<label for="categorie">Catégorie</label>
						<select id="categorie" name="categorie">
							<option value="Pedagogique">Activités pédagogiques</option>
							<option value="Encadrement">Encadrements</option>
							<option value="PAS">Production et activité scientifique</option>
							<option value="RA">Responsabilités administratives</option>
						</select>

				</div>
              <div class="modal-footer">
				  <input type="submit" value="Enregistrer" class="btn btn-primary">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Annuler</button>
              </div>

            </div></form>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
				</div>
				</div>
				<div class="row">
					<div class="col-md-2"></div>

					<div class="col-md-2">

					</div>

				</div>

			</section>
		</div>


	</div>
	<!-- jQuery 3 -->
	<script src="../../bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Slimscroll -->
	<script
		src="../../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="../../bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="../../dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../../dist/js/demo.js"></script>


</body>
</html>