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
        
      <div class="col-md-9">
      <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab_1" data-toggle="tab">Dossier administratif</a></li>
              <li><a href="#tab_2" data-toggle="tab">Dossier pedagogique et scientifique </a></li>
              <li><a href="#tab_3" data-toggle="tab">Dossier complementaire </a></li>

              <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
              <div id="collapseOne" class="panel-collapse collapse in">
                    
                  <div class="box-body">
                    <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Demande manuscrite adressee au President de la Commission universitaire nationale 
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Attestation de travail recente
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Copie du diplome de doctorat d Etat ou du titre d habilitation universitaire
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                     Copie de l attestation d equivalence "Dans le cas d un diplome etranger"
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Copie de l arrete de maitre de conferences classe A
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Curriculum vitae detaille
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Copies des decrets et/ou des arretes de nomination a des fonctions ou postes superieurs
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Copie de la these de Doctorat
                    </label>
                  </div>
                    </div>
                  
                 </div>
                
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_2">
                 <div class="box-body">
				<div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Compte rendu des activites pedagogiques et scientifiques depuis la date d acces au grade de maitre de conferences classe A 
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Copies des pages de garde des memoires de magister et/ou theses de doctorats ou doctorats d Etat diriges et soutenus  accompagnees 
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      copies des autorisations et des proces verbaux de soutenance. 
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Copies des pages de garde des memoires de fin d etudes de masters encadres et soutenus.
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Exemplaires des ouvrages pedagogiques edites.
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Exemplaires des manuels pedagogiques edites.
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Exemplaires  des polycopies edites.
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Publications internationales "revues, periodiques, ouvrages, actes et proceedings edites" 
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Brevet d invention  eventuellement 
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Publications nationales "revues, periodiques, ouvrages, actes et proceedings edites".
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Communications internationales, exemplaires originaux
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Communications nationales, exemplaires originaux  
                    </label>
                  </div>
                  
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Activites d animation scientifique "Organisation de colloques, expertise, membre de comite de lecture, chef ou membre d un projet de recherche"
                    </label>
                  </div>
                    </div>
                  

                  </div>
                  
                
                 
              
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_3">
              
                              <div class="box-body">
                  <div class="checkbox">
                    <label>
                      <input type="checkbox">
                      Fiche de candidature "en deux 02 exemplaires"
                    </label>
                  </div>


                    </div>
                                   
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          
      </div>
      
      <div class="col-md-3">
        <a href="listcandrecepcomplet.aspx" class="btn btn-block btn-success btn-sm">Complet</a> 
          <a href="listattenteincomplet.aspx" class="btn btn-block btn-danger btn-sm">En attente</a>
        </div>
         
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