package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.ExceptionDao.MinhaExceptionDAO;

import br.edu.unoesc.dao.ComponentesDAO;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.model.Componentes;
import br.edu.unoesc.model.Usuario;



@Controller
@Path("/formulario")
public class FormularioController {

	@Inject
	private Result result;

	@Inject
	private Usuario usuario;

	@Inject
	private UsuarioDAO usuarioDAO;
	@Inject
	private ComponentesDAO componentesDAO;
	private Usuario usuarioSelecionado;

	@Post("/salvarComponentes")
	public void salvarComponentes(Componentes componentes) {
		if (componentes != null) {
			try {
				componentesDAO.salvar(componentes);
			} catch (MinhaExceptionDAO e) {
				result.include("erro", e.getMessage());
			}
		}
		result.include("resultado", componentesDAO.listar(Componentes.LISTAR, Componentes.class));
		result.redirectTo(this).formulario();
	}

	//@Post("/editar1/{codigo}")
	///public void editar1(Long codigo) {
	//this.usuarioSelecionado = usuarioDAO.pesquisarPorCodigo(codigo, Usuario.PESQUISAR_POR_CODIGO, Usuario.class);
	//result.forwardTo(FormularioController.class).formulario();
	//}
	@Get("/editar/{nome}")
	public void editar(String nome){
		 
			Usuario veic = new Usuario();
			veic.setNome(nome);
			try {
				usuarioDAO.editar(veic, Usuario.class);
			} catch (MinhaExceptionDAO e) {
				e.printStackTrace();
			}
			result.forwardTo(FormularioController.class).formulario();
		
	}
	
	@Get("/sair")
	public void sair(){
		result.forwardTo(LoginController.class).formulario();
	}

	@Get("/listar")
	public void listar() {
		result.include("resultado", componentesDAO.listar(Componentes.LISTAR, Componentes.class));
		result.forwardTo(FormularioController.class).table();

	}
	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Componentes componentes = new Componentes();
		componentes.setCodigo(codigo);
		try {
			componentesDAO.excluir(componentes, Componentes.class);
		} catch (MinhaExceptionDAO e) {
			e.printStackTrace();
		}
		result.forwardTo(FormularioController.class).listar();
	}

	public void listar(List<Componentes> componentes) {
		result.include("resultado", componentes);
	}

	@Get("/formulario")
	public void formulario() {

	}

	@Get("/user")
	public void user() {

	}

	@Get("/table")
	public void table() {

	}

	@Get("/maps")
	public void maps() {

	}

}
