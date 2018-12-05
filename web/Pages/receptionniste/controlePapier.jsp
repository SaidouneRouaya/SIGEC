<%@ taglib prefix="tg" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SIGEC | controle des documents</title>
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

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
<!-- Header content -->
    <section class="content-header">
      <h1>
        Controle Papier
        <small>Documents constituant le dossier de candidature</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Accueil</a></li>
        <li class="active">Controle Papier</li>
      </ol>
    </section>
    
    <!-- Main content -->


   <section class="content">
    <h2 class="page-header"></h2>

      <div class="row">
          <form action="/listattenteincomplet.aspx" method="post">
          <div class="col-md-9">
              <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                          <li class="active"><a href="#tab_1" data-toggle="tab">Dossier administratif</a></li>
                          <li><a href="#tab_2" data-toggle="tab">Dossier pedagogique et scientifique </a></li>
                          <li><a href="#tab_3" data-toggle="tab">Dossier complementaire </a></li>

                          <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li>
                        </ul>
                      <!-- Admin -->

                        <div class="tab-content">
                          <div class="tab-pane active" id="tab_1">
                          <div id="collapseOne" class="panel-collapse collapse in">

                              <div class="box-body">
                                  <tg:forEach begin="0" end="${ListeDossierAdmin.size() -1}" var="i" >
                                <div class="checkbox">
                                        <label>
                                            <tg:choose>
                                                <tg:when test="${ListeDossierAdmin[i].disponible.equals('1')}">
                                                    <input type="checkbox" name="checkbox" value="${ListeDossierAdmin[i].id_doc}" checked="checked">
                                                </tg:when>
                                                <tg:otherwise>
                                                    <input type="checkbox" name="checkbox" value="${ListeDossierAdmin[i].id_doc}" >
                                                </tg:otherwise>
                                            </tg:choose>
                                              ${ListeDossierAdmin[i].libelle}
                                            </label>
                              </div>
                                  </tg:forEach>
                             </div>
                          </div>
                          </div>
                          <!-- Pedagogique -->
                          <div class="tab-pane" id="tab_2">
                             <div class="box-body">

                                <tg:forEach begin="0" end="${ListeDossierPedagog.size() -1}" var="i" >
                                    <div class="checkbox">
                                        <label>
                                            <tg:choose>
                                                <tg:when test="${ListeDossierPedagog[i].disponible.equals('1')}">
                                                    <input type="checkbox" name="checkbox" value="${ListeDossierPedagog[i].id_doc}" checked="checked">
                                                </tg:when>
                                                <tg:otherwise>
                                                    <input type="checkbox" name="checkbox" value="${ListeDossierPedagog[i].id_doc}" >
                                                </tg:otherwise>
                                            </tg:choose>
                                                ${ListeDossierPedagog[i].libelle}
                                            </label>
                                    </div>
                                </tg:forEach>

                                </div>
                              </div>

                          <!-- /.tab-pane -->
                          <div class="tab-pane" id="tab_3">

                                          <div class="box-body">

                                  <tg:forEach begin="0" end="${ListeDossierComplem.size() -1}" var="i" >
                                      <div class="checkbox">
                                          <label>
                                              <tg:choose>
                                                  <tg:when test="${ListeDossierComplem[i].disponible.equals('1')}">
                                                      <input type="checkbox" name="checkbox" value="${ListeDossierComplem[i].id_doc}" checked="checked">
                                                  </tg:when>
                                                  <tg:otherwise>
                                                      <input type="checkbox" name="checkbox" value="${ListeDossierComplem[i].id_doc}" >
                                                  </tg:otherwise>
                                              </tg:choose>
                                                  ${ListeDossierComplem[i].libelle}
                                               </label>
                                      </div>
                                  </tg:forEach>

                                </div>

                          </div>
                          <!-- /.tab-pane -->
                        </div>
                        <!-- /.tab-content -->



                  </div>
          </div>


          <div class="col-md-3">

              <input type ="submit" name="complet" class="btn btn-block btn-success btn-sm" value="Complet">
              <input type ="submit" name="attente" class="btn btn-block btn-success btn-sm" value="En attente">
          </div>
          </form>
      </div>

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