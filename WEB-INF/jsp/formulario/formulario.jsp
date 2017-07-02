<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>IOT Control</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
	
	

    <!-- Bootstrap core CSS     -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    
    <link href="../css/style.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="../css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="../css/paper-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="../css/demo.css" rel="stylesheet" />


    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="../css/themify-icons.css" rel="stylesheet">


</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-background-color="white" data-active-color="danger">

    <!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="http://www.google.com" class="simple-text">
                    IOT Control
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a  href="${linkTo[FormularioController].formulario()}">
                        <i class="ti-panel"></i>
                        <p>Componentes</p>
                    </a>
                </li>
                <li>
                    <a href="${linkTo[FormularioController].user()}">
                        <i class="ti-user"></i>
                        <p>Usuário</p>
                    </a>
                </li>
                <li>
                    <a href="${linkTo[FormularioController].listar()}">
                        <i class="ti-view-list-alt"></i>
                        <p>Tabela Controle</p>
                    </a>
                </li>
              
                <li>
                    <a href="${linkTo[FormularioController].maps()}">
                        <i class="ti-map"></i>
                        <p>Sensor</p>
                    </a>
                </li>
             </ul>
    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Cadastra Componentes</a>
                
                
                
                
                </div>
                <div class="sair">
                <a class="btn btn-xs btn-danger" type="button" href="${linkTo[LoginController].sair()}">
						<span style="padding: 2px" class="glyphicon glyphicon-off"></span>SAIR
					</a>
                
                </div>
                
               </div>
        </nav>
<div class="content">
            <div class="container-fluid">
                <div class="row">
                    
                    <div class="col-lg-8 col-md-7">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Insira Componente</h4>
                            </div>
                            <div class="content">
                                <form  action='<c:url value="/formulario/salvarComponentes"/>' method="post">
                                 

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Nome:</label>
                                                <input type="text" name="componentes.nome" class="form-control border-input" placeholder="EX: Lampada, TV" value="${componentes.nome}" >
                                            </div>
                                        </div>
                                       
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Local:</label>
                                                <input type="text" name="componentes.local" class="form-control border-input" placeholder="EX: Sala, Cozinha" value="${componentes.local}">
                                            </div>
                                        </div>
                                    </div>

                                 

                                    <div class="text-center">
                                        <button type="submit" class="btn btn-info btn-fill btn-wd">Salvar Componente</button>
                                        
                                         
                                    </div>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>

         <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>

                        <li>
                            Developers
                        </li>
                         <li>
                              Marcos & Vagner
                        </li> 
                    </ul>
                </nav>
				<div class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script>, 
                    <a href="http://www.unoesc.edu.br/cursos/graduacao/tecnologia-em-analise-e-desenvolvimento-de-sistemas/apresentacao/54/300/matriz">
                    	TADS</a>
                </div>
            </div>
        </footer>

    </div>
</div>


</body>

 <!--   Core JS Files   -->
    <script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="../js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="../js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="../js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="../js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="../text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="../js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="../js/demo.js"></script>

</html>