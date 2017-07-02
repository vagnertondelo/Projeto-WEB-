<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
	@import url("../setor/style.css");
	@import url("../../setor/style.css");
</style>


	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Tabela</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    
    <link href="../toogle/toogle.css" rel="stylesheet">
    <link href="../../toogle/toogle.css" rel="stylesheet">
      <link href="../../css/bootstrap-toggle.min.css" rel="stylesheet">

    <!-- Bootstrap core CSS     -->
    
     <link href="../css/bootstrap-toggle.min.css" rel="stylesheet" />
     
      <link href="../css/bootstrap.css" rel="stylesheet" />
      <link href="../../css/bootstrap.css" rel="stylesheet" />
     
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../css/bootstrap.min.css" rel="stylesheet" />
    
     <link href="../css/bootstrap-toggle.min.css" rel="stylesheet" />
    
    <link href="../css/style.css" rel="stylesheet" />
    <link href="../../css/style.css" rel="stylesheet" />
    
     <link href="../../css/bootstrap-toggle.min.css" rel="stylesheet" />
     
      <link href="../../css/bootstrap.css" rel="stylesheet" />
     
    <link href="../../css/bootstrap.min.css" rel="stylesheet" />
    
    <link href="../../css/bootstrap-toggle.min.css" rel="stylesheet" />
    
    
    
    
    
    
    

    <!-- Animation library for notifications   -->
    <link href="../css/animate.min.css" rel="stylesheet"/>
    
     <link href="../../css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="../css/paper-dashboard.css" rel="stylesheet"/>
    
    <link href="../../css/paper-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="../css/demo.css" rel="stylesheet" />
    
    <link href="../../css/demo.css" rel="stylesheet" />

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="../css/themify-icons.css" rel="stylesheet">
    <link href="../../css/themify-icons.css" rel="stylesheet">
    
    <script type="text/javascript" src="../js/js.js"></script>
    
<script type="text/javascript" src="../../js/js.js"></script></head>
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
                     <a class="navbar-brand" href="#">Equipamentos - IOTs</a>
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
                    <div class="col-md-12">
                        <div class="card card-plain">
                            <div class="header">
                                <h4 class="title">Tabela de Gerenciamento de IOTs</h4>
                                <p class="category">Equipamentos Gerenciaveis</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover">
                                <thead>
                                        <th>ID</th>
                                    	<th>Nome</th>
                                    	<th>Local</th>
                                    	 <!--   <th>togle</th>-->
                                    	<th>ON/OFF</th>
                                    	<th>Excluir</th>
                                    </thead>
                                <c:forEach var="c" items="${resultado}">
                                		
                                        <tr>
                                        	<td><c:out value="${c.codigo}"/></td>
                                        	<td><c:out value="${c.nome}"/></td>
                                        	<td><c:out value="${c.local}" /></td>
                                        <!--  	<td><input id="${c.codigo}" checked data-toggle="toggle" type="checkbox" onClick="circuito(3,'${c.local}');">
                                        	
                                        	<div id="circuito3"></div>
                                        	</td>-->
                                        	<!--  <td><div class="switch">
  <input id="cmn-toggle-1" class="cmn-toggle cmn-toggle-round" type="checkbox">
  <label for="cmn-toggle-1"></label>
</div>

<div class="switch">
  <input id="cmn-toggle-4" class="cmn-toggle cmn-toggle-round-flat" type="checkbox">
  <label for="cmn-toggle-4"></label>
</div>

<div class="switch">
  <input id="cmn-toggle-7" class="cmn-toggle cmn-toggle-yes-no" type="checkbox">
  <label for="cmn-toggle-7" data-on="Yes" data-off="No"></label>
</div></td>-->
                                        	
                                        	
                                        	<td><div class="colorful-switch" >
        <input type="checkbox"  class="colorful-switch__checkbox" class="colorful-switch" id="${c.codigo}" onClick="circuito(3,'${c.local}');"/>
          <label class="colorful-switch__label" for="${c.codigo}">
            <span class="colorful-switch__sm"></span>
            <span class="colorful-switch__dot"></span>
            <span class="colorful-switch__on">
            	<span class="colorful-switch__on__inner" ></span>
            </span>
            <span  class="colorful-switch__off"></span>
          </label>
        </div><br><br><br><br><br>
        <div id="circuito3"></div></td>
                                        	<td><a class="btn btn-xs btn-danger" type="button" href="${linkTo[FormularioController].excluir(c.codigo)}">
						<span style="padding: 2px" class="glyphicon glyphicon-trash"></span>
					</a></td>
                                        </tr>
                                       
                                    </c:forEach>
                                </table>
                                <div class="sair">
                <a class="btn btn-xs btn-danger" type="button" href="${linkTo[LoginController].formulario()}">
						<span style="padding: 2px" class="glyphicon glyphicon-plus"></span>NOVO COMPONENTE
					</a>
                
                </div>
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
    <script src="../../js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="../js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../../js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="../js/bootstrap-checkbox-radio.js"></script>
	<script src="../../js/bootstrap-checkbox-radio.js"></script>
	

	<!--  Charts Plugin -->
	<script src="../js/chartist.min.js"></script>
	<script src="../../js/chartist.min.js"></script>
	

    <!--  Notifications Plugin    -->
    <script src="../js/bootstrap-notify.js"></script>
     <script src="../../js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="../js/paper-dashboard.js"></script>
	<script src="../../js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="../js/demo.js"></script>
	<script src="../../js/demo.js"></script>
	<script src="../js/bootstrap-toggle.min.js"></script>
	
	<script src="../../js/bootstrap-toggle.min.js"></script>
	
	

	
	<!-- conexão rede arduino -->
	
	 <script src="../js/jquery-1.10.2.min.js"></script>
	  <script src="../../js/jquery-1.10.2.min.js"></script>

	<script type="text/javascript" src="../js/js.js"></script>
	<script type="text/javascript" src="../../js/js.js"></script>

</html>