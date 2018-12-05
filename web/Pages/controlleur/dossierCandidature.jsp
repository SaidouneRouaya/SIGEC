<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SIGEC | Dossier de candidature</title>
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
		 <!-- contains the header -->
	<%@ include file="../controlleur/header-controlleur.jsp" %>
	
  <!-- sidebar-menu. contains the logo, sidebar, user informations, menu, searchbar -->
  	<%@ include file="../controlleur/menu-controlleur.jsp" %>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dossier de candidature
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Accueil</a></li>
        <li class="active">Dossier de candidature</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-3">
          <!--  <a href="listDossierValides.aspx" class="btn btn-block btn-success btn-sm">Valider</a> 
          <a href="listDossierRejetes.aspx" class="btn btn-block btn-danger btn-sm" data-toggle="modal" data-target="#modal-default">Rejeter</a>-->
         
          <button onClick="validationDossier();" type="button" class="btn btn-block btn-success">Valider</button>
          <button onClick="rejeterDossier();" type="button" class="btn btn-block btn-danger">Rejeter</button>
           </br>
           
           <div class="modal modal-danger fade in" id="messageValidationEchec" style="display: none; padding-right: 17px;">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Message d'erreur</h4>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Vous ne pouvez pas valider le dossier, car il contient des documents non validés ou bien rejetés.</label>
                  
                </div>
              </div>
               <div class="modal-footer">
                <!-- <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Fermer</button> -->
                <button type="button" class="btn btn-default pull-right" data-dismiss="modal">Fermer</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
           
           <div class="modal modal-success fade in" id="messageValidationReussi" style="display: none; padding-right: 17px;">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Message de succée</h4>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Le dossier a été correctement validé.</label>
                  
                </div>
              </div>
               <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Fermer</button> 
                <a onClick="afficherListeValide();" type="button" class="btn btn-default pull-right" data-dismiss="modal">Acceder à la liste des dossiers validés</a>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        
           <div class="modal modal-danger fade in" id="messageRejeterEchec" style="display: none; padding-right: 17px;">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Message d'erreur</h4>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Vous ne pouvez pas rejeter le dossier, car tout ses documents sont validés.</label>
                  
                </div>
              </div>
               <div class="modal-footer">
                <!-- <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Fermer</button> -->
                <button type="button" class="btn btn-default pull-right" data-dismiss="modal">Fermer</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
           
             <div class="modal modal-success fade in" id="messageRejeterReussi" style="display: none; padding-right: 17px;">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Message de succée</h4>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Le dossier à été rejeté correctement.</label>
                  
                </div>
              </div>
               <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Fermer</button>
                <button onClick="afficherListeRejets();" type="button" class="btn btn-default pull-right" data-dismiss="modal">Voir la liste des rejets</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
           
          <script type='text/javascript'>//<![CDATA[ 
          				function afficherListeRejets(){
          					window.location.href='http://localhost:8090/listDossierRejetes.aspx'
          				}
          				function afficherListeValide(){
          					window.location.href='http://localhost:8090/listDossierValides.aspx'
          				}
				    
				        function validationDossier(){
				        	var a = document.getElementById("doc1");
				        	var b = document.getElementById("doc2");
				        	var c = document.getElementById("doc3");
				        	var d = document.getElementById("doc4");
				        	var e = document.getElementById("doc5");
				        	var f = document.getElementById("doc6");
				        	var g = document.getElementById("doc7");
				        	var h = document.getElementById("doc8");
				        	
				        
				        	if (a.className == "fa fa-file-pdf-o text-green" && b.className == "fa fa-file-pdf-o text-green" && c.className == "fa fa-file-pdf-o text-green" && d.className == "fa fa-file-pdf-o text-green" && e.className == "fa fa-file-pdf-o text-green" && f.className == "fa fa-file-pdf-o text-green" && g.className == "fa fa-file-pdf-o text-green" && h.className == "fa fa-file-pdf-o text-green"){
				        		$("#messageValidationReussi").modal();}
				        		else {
				        			$("#messageValidationEchec").modal();
				        		}
				        		
				        	}
				        function rejeterDossier(){
				        	var a = document.getElementById("doc1");
				        	var b = document.getElementById("doc2");
				        	var c = document.getElementById("doc3");
				        	var d = document.getElementById("doc4");
				        	var e = document.getElementById("doc5");
				        	var f = document.getElementById("doc6");
				        	var g = document.getElementById("doc7");
				        	var h = document.getElementById("doc8");
				        	
				        
				        	if (a.className == "fa fa-file-pdf-o text-red" || b.className == "fa fa-file-pdf-o text-red" || c.className == "fa fa-file-pdf-o text-red" || d.className == "fa fa-file-pdf-o text-red" || e.className == "fa fa-file-pdf-o text-red" || f.className == "fa fa-file-pdf-o text-red" || g.className == "fa fa-file-pdf-o text-red" || h.className == "fa fa-file-pdf-o text-red"){
				        		$("#messageRejeterReussi").modal();}
				        		else {
				        			$("#messageRejeterEchec").modal();
				        		}
				        		
				        	}
				        	   
				        
				       
				    
				        
				//]]>  
				</script>
          
          
          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Dossiers</h3>

              <div class="box-tools">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="box-body no-padding">
              <ul class="nav nav-pills nav-stacked">
                <li><a href="#" id="administratif"><i class="fa fa-file-text-o"></i>1. Dossier administratif
                  <span class="text-gray pull-right">8</span></a></li>
                <li><a href="#" id="pedagogique"><i class="fa fa-file-text-o"></i>2. Dossier pedagogique <span class="text-gray pull-right">13</span></a></li>
                <li><a href="#" id="complement"><i class="fa fa-file-text-o"></i>3. Dossier complementaire <span class="text-gray pull-right">1</span></a></li>
               
               <script>
               document.getElementById("administratif").onclick = displayAdministratif;

               function displayAdministratif() {
            	   var x = document.getElementById("administratifDiv");
            	   var y = document.getElementById("pedagogiqueDiv");
            	   var z = document.getElementById("complementDiv");
            	  
            	        x.style.display = "block";
            	   
            	        z.style.display = "none";
            	        y.style.display = "none";
            	   
               }
               
               
               document.getElementById("complement").onclick = displayComplement;

               function displayComplement() {
            	   var x = document.getElementById("administratifDiv");
            	   var y = document.getElementById("pedagogiqueDiv");
            	   var z = document.getElementById("complementDiv");
            	    
            	        z.style.display = "block";
            	    
            	        x.style.display = "none";
            	        y.style.display = "none";
            	    
               }
               
               
               document.getElementById("pedagogique").onclick = displayPedagogique;

               function displayPedagogique() {
            	   var x = document.getElementById("administratifDiv");
            	   var y = document.getElementById("pedagogiqueDiv");
            	   var z = document.getElementById("complementDiv");
            	    
            	        y.style.display = "block";
            	    
            	        x.style.display = "none";
            	        z.style.display = "none";
            	    
               }
			</script>
              </ul>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /. box -->
         
        </div>
        <!-- /.col -->
        <div class="col-md-9">
        
          <div id="administratifDiv" class="box box-primary">
            <div class="box-header">
              

              <div class="box-tools pull-right">
                <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Previous"><i class="fa fa-chevron-left"></i></a>
                <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Next"><i class="fa fa-chevron-right"></i></a>
              </div>
            </div>
            <!-- /.box-header -->
            <div id="demo" class="box-body no-padding">
              <div class="mailbox-read-info">
                <h3>1. Dossier Administratif</h3>
                  <h5><span class="mailbox-read-time pull-right">18/04/201:03</span></h5>
              </div>
              <!-- /.mailbox-read-info -->
              <div class="mailbox-controls with-border text-center">
                <div class="btn-group">
                       <button type="button" class="btn btn-default btn-sm" data-toggle="tooltip" data-container="body" title="Reply">
                    <i class="fa fa-reply"></i></button>
                  <button type="button" class="btn btn-default btn-sm" data-toggle="tooltip" data-container="body" title="Forward">
                    <i class="fa fa-share"></i></button>
                </div>
                <!-- /.btn-group -->
                <button type="button" class="btn btn-default btn-sm" data-toggle="tooltip" title="Print">
                  <i class="fa fa-print"></i></button>
              </div>
              <!-- /.mailbox-controls -->
              <!-- /.mailbox-read-message -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
              <ul class="mailbox-attachments clearfix">
                <li>
                  <span class="mailbox-attachment-icon"><i id="doc1" class="fa fa-file-pdf-o text-green" id="demo"></i></span>

                  <div class="mailbox-attachment-info">
                    <a target="_blank" href="${ListeDossierAttente[0].lien}" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Demande-manuscrite.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" onclick="valide('doc1')" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" onClick="rejet('doc1');" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>


  
                
                <li>
                  <span class="mailbox-attachment-icon"><i id="doc2" class="fa fa-file-pdf-o text-green"></i></span>

                  <div class="mailbox-attachment-info">
                    <a target="_blank" href="C:\\Users\\start\\eclipse-workspace\\SIGEC\\SIGEC\\Accuse_reception.pdf" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Attestation-travail.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" onclick="valide('doc2')" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" onclick="rejet('doc2')" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
                <li>
                  <span class="mailbox-attachment-icon"><i id="doc3" class="fa fa-file-pdf-o text-green"></i></span>

                  <div class="mailbox-attachment-info">
                    <a target="_blank" href="${ListeDossierAttente[2].lien}" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Copie-diplome-doctorat.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" onclick="valide('doc3')" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" onclick="rejet('doc3')" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
              <li>
                  <span class="mailbox-attachment-icon"><i id="doc4" class="fa fa-file-pdf-o text-green"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Copie-attestation-equivalence.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" onclick="valide('doc4')" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" onclick="rejet('doc4')" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
                <li>
                  <span class="mailbox-attachment-icon"><i id="doc5" class="fa fa-file-pdf-o text-red"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Copie-arrete-maitre-conferences-A.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" onclick="valide('doc5')" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" onclick="rejet('doc5')" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
                <li>
                  <span class="mailbox-attachment-icon"><i id="doc6" class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Copies-decrets-nomination-fonctions-superieurs.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" onclick="valide('doc6')" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" onclick="rejet('doc6')" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
                 <li>
                  <span class="mailbox-attachment-icon"><i id="doc7" class="fa fa-file-pdf-o  text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> CV-detaille.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" onclick="valide('doc7')" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" onclick="rejet('doc7')" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
                
                
                <li>
                  <span class="mailbox-attachment-icon"><i id="doc8" class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Copie-these-Doctorat.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" onclick="valide('doc8')" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" onclick="rejet('doc8')" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>

              </ul>
            </div>
            <!-- /.box-footer -->
            <div class="box-footer">
              <div class="pull-right">
                
              </div>
              <!--  <div class="pull-right">
              	<button type="button" class="btn btn-default"><i class="fa fa-reply"></i> Repondre au candidat</button>
              </div>-->
              <button type="button" class="btn btn-default"><i class="fa fa-print"></i> Imprimer</button>
              
              
            </div>
            <!-- /.box-footer -->
          </div>
          
          
          <div id="pedagogiqueDiv" style="display:none;" class="box box-primary">
            <div class="box-header">
              

              <div class="box-tools pull-right">
                <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Previous"><i class="fa fa-chevron-left"></i></a>
                <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Next"><i class="fa fa-chevron-right"></i></a>
              </div>
            </div>
            <!-- /.box-header -->
            <div id="demo" class="box-body no-padding">
              <div class="mailbox-read-info">
                <h3>2. Dossier Pedagogique</h3>
                  <h5><span class="mailbox-read-time pull-right">18/04/2018 11:03 </span></h5>
              </div>
              <!-- /.mailbox-read-info -->
              <div class="mailbox-controls with-border text-center">
                <div class="btn-group">
                       <button type="button" class="btn btn-default btn-sm" data-toggle="tooltip" data-container="body" title="Reply">
                    <i class="fa fa-reply"></i></button>
                  <button type="button" class="btn btn-default btn-sm" data-toggle="tooltip" data-container="body" title="Forward">
                    <i class="fa fa-share"></i></button>
                </div>
                <!-- /.btn-group -->
                <button type="button" class="btn btn-default btn-sm" data-toggle="tooltip" title="Print">
                  <i class="fa fa-print"></i></button>
              </div>
              <!-- /.mailbox-controls -->

              <!-- /.mailbox-read-message -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
              <ul class="mailbox-attachments clearfix">
                <li>
                  <span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> activites-pedagogiques-C-A.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>

                
                <li>
                  <span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> pages-garde-memoires-magister-doctorats.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
                <li>
                  <span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Copie-diplome-doctorat.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
              <li>
                  <span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> copies-autorisations-soutenance.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
                <li>
                  <span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Copies-pages-garde-memoires-fin-etudes.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
                <li>
                  <span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Exemplaires-ouvrages-pedagogiques.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
                 <li>
                  <span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Exemplaires-manuels-pedagogiques-edites.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
                
                
                <li>
                  <span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Exemplaires-polycopies-edites.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
                <li>
                  <span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Publications-internationales.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
                <li>
                  <span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Brevet-invention-eventuellement.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
                <li>
                  <span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Publications-nationales.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
                <li>
                  <span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Communications-internationales.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
                <li>
                  <span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Communications-nationales.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
                <li>
                  <span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Activites-animation-scientifique.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>

              </ul>
            </div>
            <!-- /.box-footer -->
            <div class="box-footer">
              <div class="pull-right">
                
              </div>
             <!--   <div class="pull-right">
              	<button type="button" class="btn btn-default"><i class="fa fa-reply"></i> Repondre au candidat</button>
              </div>-->
              <button type="button" class="btn btn-default"><i class="fa fa-print"></i> Imprimer</button>
            </div>
            <!-- /.box-footer -->
          </div>
          
          
          <div id="complementDiv" style="display:none;" class="box box-primary">
            <div class="box-header">
              

              <div class="box-tools pull-right">
                <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Previous"><i class="fa fa-chevron-left"></i></a>
                <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Next"><i class="fa fa-chevron-right"></i></a>
              </div>
            </div>
            <!-- /.box-header -->
            <div id="demo" class="box-body no-padding">
              <div class="mailbox-read-info">
                <h3>3. Dossier Complement</h3>
                  <h5><span class="mailbox-read-time pull-right">18/04/2018 11:03 </span></h5>
              </div>
              <!-- /.mailbox-read-info -->
              <div class="mailbox-controls with-border text-center">
                <div class="btn-group">
                       <button type="button" class="btn btn-default btn-sm" data-toggle="tooltip" data-container="body" title="Reply">
                    <i class="fa fa-reply"></i></button>
                  <button type="button" class="btn btn-default btn-sm" data-toggle="tooltip" data-container="body" title="Forward">
                    <i class="fa fa-share"></i></button>
                </div>
                <!-- /.btn-group -->
                <button type="button" class="btn btn-default btn-sm" data-toggle="tooltip" title="Print">
                  <i class="fa fa-print"></i></button>
              </div>
              <!-- /.mailbox-controls -->

              <!-- /.mailbox-read-message -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
              <ul class="mailbox-attachments clearfix">
                <li>
                  <span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Fiche-candidature1.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>

                
                <li>
                  <span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o text-yellow"></i></span>

                  <div class="mailbox-attachment-info">
                    <a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Fiche-candidature2.pdf</a>
                        <span class="mailbox-attachment-size">
                          1,245 KB
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-green"></i></a>
                          <a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-circle text-red"></i></a>
                        </span>
                  </div>
                </li>
                
              
                
             
              </ul>
            </div>
            <!-- /.box-footer -->
            <div class="box-footer">
           <!--  <div class="pull-right">
              	<button type="button" class="btn btn-default"><i class="fa fa-reply"></i> Repondre au candidat</button>
              </div> -->
              
              <button type="button" class="btn btn-default"><i class="fa fa-print"></i> Imprimer</button>
            </div>
            <!-- /.box-footer -->
          </div>
          
          
          <!-- /. box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  
			    <script type='text/javascript'>//<![CDATA[ 
				    
				        function rejet(id){
				        	document.getElementById(id).className = "fa fa-file-pdf-o text-red";   
				        }
				        function valide(id) {
		    				
		    				document.getElementById(id).className = "fa fa-file-pdf-o text-green";
							}
				    
				//]]>  
				</script>

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