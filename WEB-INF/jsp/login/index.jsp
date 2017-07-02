<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WEB</title>
	
	
	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../css/style.css">
	
	<script type="text/javascript" src="../js/jquery.js"></script>
	<script type="text/javascript" src="../js/js.js"></script>
</head>
<body class="geral">

<div class="container">

    	<div class="row">
    
    	
			<div class="col-md-6 col-md-offset-3">
				<div class="logo">
					<p class="texto"> LOGO</p>
				</div>
				
				<div class="panel panel-login">

					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="" class="active" id="login-form-link">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">Cadastrar</a>
							</div>
							
						</div>
						<hr>
					</div>
					<!--Tela de Login -->
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
							 
								<form id="login-form" action='<c:url value="/login/logar"/>' method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" name="usuario.nome" id="username" tabindex="1" class="form-control" placeholder="Nome" value="${usuario.nome}">
									</div>
									<div class="form-group">
										<input type="password" name="usuario.senha" id="password" tabindex="2" class="form-control" placeholder="Senha" value="${usuario.senha}">
									</div>
									<div class="form-group text-center">
										<input type="checkbox" tabindex="3" class="" name="remember" id="remember">
										<label for="remember"> Lembrar minha senha</label>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Entrar">
											</div>
										</div>
									</div>
									</form>
									
									<!--Tela de Recupera Senha -->
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">

											<a href="#" id="recupera-form-link">Recuperar Senha?</a>
											<form id="recupera-form" action="" method="post" role="form" style="display: none;">
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Nome" value="">
									</div>
									<div class="form-group">
										<input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email" value="">
									</div>
									
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Reenviar Senha">
											</div>
										</div>
									</div>
								</form>
													
												</div>
											</div>
										</div>
									</div>
								</form>
								<!--Tela de Cadastro -->
								<div class="back"> 
								<form id="register-form" name="formulario" action='<c:url value="/cadastra/salvar"/>' method="post" role="form" style="display: none;">

									<div class="form-group">
										<input type="text" name="usuario.nome" id="username" tabindex="1" class="form-control" placeholder="Nome" value="${usuario.nome}">
									</div>
									<div class="form-group">
										<input type="email" name="usuario.email" id="email" tabindex="1" class="form-control" placeholder="Email" value="${usuario.email}">
									</div>
									<div class="form-group">
										<input type="password" name="senha" id="password" tabindex="2" class="form-control" placeholder="Senha">
									</div>
									<div class="form-group">
										<input type="password" name="usuario.senha" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirmar senha" value="${usuario.senha}">
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Cadastrar">
											</div>
										</div>
									</div>
								</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>