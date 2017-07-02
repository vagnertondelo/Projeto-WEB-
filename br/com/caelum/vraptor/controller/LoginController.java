package br.com.caelum.vraptor.controller;

import javax.inject.Inject;
import javax.swing.JOptionPane;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.model.Usuario;


@Controller
@Path("/login")
public class LoginController {

	@Inject
	private Result result;
	@Inject
	private Usuario usuario;
	@Inject
	private UsuarioDAO usuarioDAO;
	
	@Get()
	public void index() {
		
	}
	@Get("/formulario")
	public void formulario() {
		
	}
	@Get("/sair")
	public void sair(){
		result.forwardTo(LoginController.class).index();
	}
	
	@Post("/logar")
	public void logar(Usuario usuario) {
		if(usuarioDAO.logar(usuario)!= null){
			
			result.forwardTo(LoginController.class).formulario();
			
		}else{
			String[] opcoes = {"Fechar",};
			JOptionPane.showOptionDialog(null, "Por favor verifique se login esta correto", "Login Incorreto!", JOptionPane.DEFAULT_OPTION, JOptionPane.WARNING_MESSAGE, null, opcoes, opcoes[0]);
			result.forwardTo(LoginController.class).index();
			}
		}
		
		
		
	
	
	@Get("/erro")
	public void erro() {
		
	}
	
}