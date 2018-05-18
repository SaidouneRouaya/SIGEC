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
					<div class="col-xs-9">
						<div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab_1" data-toggle="tab">Section 1</a></li>
              <li><a href="#tab_2" data-toggle="tab">Section 2 </a></li>
              <li><a href="#tab_3" data-toggle="tab">Section 3 </a></li>

              <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
              <div id="collapseOne" class="panel-collapse collapse in">
                    
                 <div class="box">

							<!-- /.box-header -->
							<div class="box-body">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>Critere</th>
											<th>Ponderation</th>
											<th>Modifier</th>
											

										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Description Critere 1</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button>
													<button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-default">
               Supprimer le critère
              </button></td>

										</tr>
										<tr>
											<td>Description Critere 2</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button>
													<button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-default">
               Supprimer le critère
              </button></td>

										</tr>
										<tr>
											<td>Description Critere 3</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button>
													<button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-default">
               Supprimer le critère
              </button></td>

										</tr>
										<tr>
											<td>Description Critere 4</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button>
													<button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-default">
               Supprimer le critère
              </button></td>

										</tr>
										<tr>
											<td>Description Critere 5</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button>
													<button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-default">
               Supprimer le critère
              </button></td>

										</tr>
										<tr>
											<td>Description Critere 6</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button>
													<button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-default">
               Supprimer le critère
              </button></td>

										</tr>
										<tr>
										<tr>
											<td>Description Critere 7</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button>
													<button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-default">
               Supprimer le critère
              </button></td>

										</tr>
										<tr>
											<td>Description Critere 8</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button>
													<button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-default">
               Supprimer le critère
              </button></td>

										</tr>
										<tr>
											<td>Description Critere 9</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button>
													<button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-default">
               Supprimer le critère
              </button></td>

										</tr>
									</tbody>
									
								</table>
							</div>
							<!-- /.box-body -->
							
						</div>
						<!-- /.box -->
                 </div>
                
              </div>
              <!-- /.tab-pane -->
             <div class="tab-pane" id="tab_2">
              
                 <div class="box">

							<!-- /.box-header -->
							<div class="box-body">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>Critere</th>
											<th>Ponderation</th>
											<th>Modifier</th>
											

										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Description Critere 1</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button>
													<button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-default">
               Supprimer le critère
              </button></td>

										</tr>
										<tr>
											<td>Description Critere</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button>
													<button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-default">
               Supprimer le critère
              </button></td>

										</tr>
										<tr>
											<td>Description Critere</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button>
													<button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-default">
               Supprimer le critère
              </button></td>

										</tr>
										<tr>
											<td>Description Critere 4</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button>
													<button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-default">
               Supprimer le critère
              </button></td>

										</tr>
										<tr>
											<td>Description Critere 5</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button>
													<button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-default">
               Supprimer le critère
              </button></td>

										</tr>
										<tr>
											<td>Description Critere 6</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button>
													<button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-default">
               Supprimer le critère
              </button></td>

										</tr>
										<tr>
									</tbody>
									
								</table>
							</div>
							<!-- /.box-body -->
							
						</div>
						<!-- /.box -->
              </div>
              <!-- /.tab-pane -->
              
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_3">
              
                 <div class="box">

							<!-- /.box-header -->
							<div class="box-body">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>Critere</th>
											<th>Pondération</th>
											<th>Modifier</th>
											

										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Description Critere 1</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button></td>

										</tr>
										<tr>
											<td>Description Critere 2</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button></td>

										</tr>
										<tr>
											<td>Description Critere 3</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button></td>

										</tr>
										<tr>
											<td>Description Critere 4</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button></td>

										</tr>
										<tr>
											<td>Description Critere 5</td>
											<td><select class="form-control">
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                  </select></td>
											<td><button type="button"
													class="btn btn-block btn-xs">Modifier</button>
													<button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-default">
               Supprimer le critère
              </button></td>

										</tr>
										
										
									</tbody>
									
								</table>
							</div>
							<!-- /.box-body -->
							
						</div>
						<!-- /.box -->
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          
						
						
						

						<!-- /.box-body -->
					</div>
					<!-- /.box -->
					
				
					
				
				<div class="col-xs-3">
					
         			 
           			<a href="#" class="btn btn-primary btn-block margin-bottom">Partager avec commission</a>
           			<button type="button" class="btn btn-block btn-success" data-toggle="modal" data-target="#modal-default">
               Ajouter un critere
              </button>
              
              <div class="modal fade in" id="modal-default" style="display: none; padding-right: 17px;">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Ajouter crtiere</h4>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Description du critere</label>
                  <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enterer le critere">
                </div>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Enter le seuil de ponderation</label>
                  <input type="email" class="form-control" id="exampleInputEmail1" placeholder="seuil de ponderation">
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
              </div>
            </div>
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