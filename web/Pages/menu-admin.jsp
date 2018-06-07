<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

   <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="skin-yellow sidebar">
      <!-- Sidebar user panel -->

      <!-- search form -->

      <!-- /.search form -->
      
      
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">      MENU</li>
        
        
        
        <!-- Menu Elements -->
        
        <li> <!-- Liste des candidats -->
          <a href="tableauBord.aspx">
            <i class="fa fa-dashboard"></i> <span>Tableau de bord</span>
            <span class="pull-right-container">
              <span class="label label-primary pull-right"></span>
            </span>
          </a>
          
        </li>
        
        <li> <!-- Dossies en attente -->
          <a href="listeCriteres.aspx">
            <i class="fa  fa-table"></i> <span>Gestion de la grille</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green"></small>
            </span>
          </a>
          
        </li>
        
        
        <li> <!-- Creer compte utilisateur -->
          <a href="ajouterUtilisateur.aspx">
            <i class="fa fa-user-plus"></i> <span>Créer un utilisateur</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green"></small>
            </span>
          </a>
          
        </li>

        <li> <!-- Liste des utilisateurs -->
          <a href="listeUtilisateurs.aspx">
            <i class="fa fa-user"></i> <span>Liste des utilisateurs</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green"></small>
            </span>
          </a>

        </li>

        <!--   <li> Creer compte candidat
          <a href="#">
            <i class="fa  fa-lock"></i> <span>Gestion des droits d'accée</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green"></small>
            </span>
          </a>
        </li>-->
      </ul>
        <!-- Menu Elements -->
    </section>
    <!-- /.sidebar -->
  </aside>
       

</body>
</html>