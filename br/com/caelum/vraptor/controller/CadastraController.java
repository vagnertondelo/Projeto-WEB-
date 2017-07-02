package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.ExceptionDao.MinhaExceptionDAO;
import br.edu.unoesc.dao.UsuarioDAO;

import br.edu.unoesc.model.Usuario;

@Controller
@Path("/cadastra")
public class CadastraController {
	
	@Inject
	private Result result;
	
	@Inject
	private UsuarioDAO usuarioDAO;
	
	
	
	@Post("/salvar")
	public void salvar(Usuario usuario) {
			
			try {
				usuarioDAO.salvar(usuario);	
			} catch (MinhaExceptionDAO e) {
				result.include("erro", e.getMessage());
			}
		
			
			result.forwardTo(LoginController.class).index();
		}
		
	
	
}
