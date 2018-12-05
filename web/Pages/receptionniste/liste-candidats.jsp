<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SIGEC | Liste des candidats</title>
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

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body class="hold-transition skin-yellow sidebar-mini">
<div class="wrapper">

  <!-- contains the header -->
	<%@ include file="../../Pages/header-receptionniste.jsp" %>
  <!-- contains the header -->


  <!-- sidebar-menu. contains the logo, sidebar, user informations, menu, searchbar -->
  	<%@ include file="../menu-receptionniste.jsp" %>
  <!-- sidebar-menu. contains the logo, sidebar, user informations, menu, searchbar -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
<!-- Header content -->
    <section class="content-header">
      <h1>
        Liste des candidats
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Accueil</a></li>
        <li class="active">Liste des candidats</li>
      </ol>
    </section>
    
    <!-- Main content -->
    
   <section class="content">
    <h2 class="page-header"></h2>

      <div class="row">
      <c:forEach begin="0" end="${ListeDossiers[i].size()-1}" var="i" >
        <div class="col-md-6">
          <!-- Widget: user widget style 1 -->
          <div class="box box-widget widget-user-2">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-user-header bg-black">
              <div class="widget-user-image">
                <img class="img-circle" src="dist/img/avatar5.png" alt="User Avatar">
              </div>
              <!-- /.widget-user-image -->
              <h3 class="widget-user-username">${ListeDossiers[i].candidat.nom} ${ListeDossiers[i].candidat.prenom}</h3>
              <h5 class="widget-user-desc">${ListeDossiers[i].candidat.grade}</h5>
              <h5 class="widget-user-desc">${ListeDossiers[i].candidat.mail }</h5>
              <h5 class="widget-user-desc">Date dépôt du dossier : ${ListeDossiers[i].datedepot}</h5>
            </div>
            <div class="box-footer no-padding">
              <ul class="nav nav-stacked">
                <li><a href="#">Controle papier<span class="pull-right badge bg-green">Effectué</span></a></li>
                
                <li><a href="#">Etat du dossier<span class="pull-right badge bg-gray">${ListeDossiers[i].etat.toString() }</span></a></li>
                <li><a href="#">Dossier de candidature<span class="pull-right badge bg-gray">Non soumis</span></a></li>
                <li><a href="C:/Users/start/eclipse-workspace/SIGEC/SIGEC/Accuse_reception.pdf" >Imprimer l'accusé de réception</a></li>
                
                
              </ul>
            </div>
          </div>
          <!-- /.widget-user -->
        </div>
        </c:forEach>
      </div>
      <!-- /.row -->

    </section>
</div>





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