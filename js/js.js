$(function() {

    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$("#recupera-form").fadeOut(100);
		$('#recupera-form-link').removeClass('active');
		$('#recupera-form-link').show();
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$("#recupera-form").fadeOut(100);
		$('#recupera-form-link').removeClass('active');
		$('#recupera-form-link').hide();
		$(this).addClass('active');
		e.preventDefault();
	});

	$('#recupera-form-link').click(function(e) {
		$("#recupera-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$('#recupera-form-link').hide();
		$(this).addClass('active');
		e.preventDefault();
	});

});

function circuito(num,setor){
	document.getElementById("circuito"+num).innerHTML = "<iframe frameborder='0' width='0px' height='0px' src='http://10.0.0.120/?"+setor+"'></iframe>"; //<?php echo $ip; ?>
	console.log("<iframe width='0%' height='0%' src='http://10.0.0.120/?"+setor+"'></iframe>"); 
}

//function validarSenha(){ 
 //   senha = document.formulario.senha.value
  //  senhaRepetida = document.formulario.usuario_senha.value
  //  if (senha != senhaRepetida){
  //      alert("Senhas não são iguais");
       // document.formulario.repetir_senha.focus("recupera-form-link");  
  //      return false;

 //   }
    
    




