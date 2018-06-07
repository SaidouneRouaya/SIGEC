<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SIGEC | Liste des utilisateurs du systeme</title>
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
    <%@ include file="../headerAdmin.jsp" %>
    <!-- contains the header -->


    <!-- sidebar-menu. contains the logo, sidebar, user informations, menu, searchbar -->
    <%@ include file="../menu-admin.jsp" %>
    <!-- sidebar-menu. contains the logo, sidebar, user informations, menu, searchbar -->

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Listes des utilisateurs</h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Acceuil</a></li>
                <li class="active">Liste des utilisateurs</li>
            </ol>

        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">

                        <!-- /.box-header -->
                        <div class="box-body">
                            <table id="example2" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>Nom</th>
                                    <th>Prénom</th>
                                    <th>Nom d'utilisateur</th>
                                    <th>type d'utilisateur</th>
                                    <th>Modifier</th>
                                    <th>Supprimer</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach begin="0" end="${ListeUtilisateurs.size()-1}" var="i" >
                                    <form method="post" action="modifierUtilisateurs.aspx">
                                    <tr>
                                        <td>${ListeUtilisateurs[i].nom}
                                        <input type="hidden" name="id" value="${ListeUtilisateurs[i].getid_utilisateur()}"></td>
                                        <td>${ListeUtilisateurs[i].prenom}</td>
                                        <td>${ListeUtilisateurs[i].nomUtilisateur}</td>
                                        <td>${ListeUtilisateurs[i].type}</td>
                                        <td>
                                            <input type="submit" name="modifier" value="Modifier" class="btn btn-block btn-warning">
                                        </td>
                                        <td>
                                            <input type="submit" name="supprimer" value="Supprimer"  class="btn btn-block btn-danger">
                                        </td>
                                    </tr>
                                    </form>
                                </c:forEach>

                                </tbody>

                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                    <!-- /.box-body -->
                </div>
                <div class="col-xs-4">

                </div>

                <div class="col-xs-3 center-block">
                    <!--<a href="#" class="btn btn-primary btn-block margin-bottom">Partager avec commission</a>-->
                    <button type="button" class="btn btn-block btn-success" data-toggle="modal" data-target="#modal-default">
                        Ajouter un nouvel utilisateur
                    </button>
                <div class="modal fade in" id="modal-default" style="display: none; padding-right: 17px;">
                    <div class="modal-dialog">
                        <div class="register-box-body">
                            <h3 class="text-yellow">
                                <p class="login-box-msg">Nouvel Utilisateur</p>
                            </h3>

                            <form action="userajoute.aspx" method="post">
                                <div class="form-group has-feedback">
                                    <input type="text" class="form-control" placeholder="Nom"
                                           name="nom" value="nouveauNom"> <span
                                        class="glyphicon glyphicon-user form-control-feedback"></span>
                                </div>
                                <div class="form-group has-feedback">
                                    <input type="text" class="form-control" placeholder="Prénom"
                                           name="prenom" value="nouveauPrenom"> <span
                                        class="glyphicon glyphicon-user form-control-feedback"></span>
                                </div>
                                <div class="form-group has-feedback">
                                    <input type="email" class="form-control" placeholder="Email"
                                           name="mail" value="nouveauMail@mail.dz"> <span
                                        class="glyphicon glyphicon-envelope form-control-feedback"></span>
                                </div>
                                <div class="form-group has-feedback">
                                    <input type="text" class="form-control"
                                           placeholder="Nom d'utilisateur" name="nomUtilisateur"
                                           value="nomUtilisateur"> <span
                                        class="glyphicon glyphicon-log-in form-control-feedback"></span>
                                </div>
                                <div class="form-group has-feedback">
                                    <input type="password" class="form-control"
                                           placeholder="Mot de passe" name="motdepasse" value="nouveauNom">
                                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                </div>
                                <div class="form-group has-feedback">
                                    <SELECT name="type" size="1">
                                        <OPTION value="receptionniste">Réceptionniste</OPTION>
                                        <OPTION value="membrecommission" >Membre de commission</OPTION>
                                        <OPTION value="controlleur">Controlleur</OPTION>
                                            <!--<OPTION value="candidat">Candidat-->
                                    </SELECT>
                                </div>
                                <div class="row">

                                    <!-- /.col -->
                                    <div class="col-xs-4"></div>
                                    <div class="col-xs-4">
                                        <button type="submit"
                                                class="btn btn-primary btn-block btn-flat">Créer</button>
                                    </div>
                                    <!-- /.col -->
                                </div>
                            </form>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                </div>
                <!-- /.box -->
            </div>
        </section>
        <!-- /.col -->
    </div>
    <!-- /.row -->



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