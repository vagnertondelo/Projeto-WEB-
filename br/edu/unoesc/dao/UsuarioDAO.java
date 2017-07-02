package br.edu.unoesc.dao;

import javax.enterprise.context.RequestScoped;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import br.edu.unoesc.model.Usuario;

@RequestScoped
public class UsuarioDAO extends GenericDAO<Usuario> {

	public Usuario logar(Usuario usuariobusca) {
		conectar();
		TypedQuery<Usuario> tq = (TypedQuery<Usuario>) em.createNamedQuery(Usuario.LOGAR, Usuario.class);
		tq.setParameter("nome", usuariobusca.getNome());
		tq.setParameter("senha", usuariobusca.getSenha());
		try {
			usuariobusca = tq.getSingleResult();
			
		} catch (NoResultException e) {
			usuariobusca = null;
		}
		desconectar();
		return usuariobusca;
	}

}
