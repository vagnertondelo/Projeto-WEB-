package br.edu.unoesc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;


@NamedQueries({

	@NamedQuery(name=Usuario.LOGAR, query="select u from Usuario u where u.nome = :nome and u.senha = :senha"),
	@NamedQuery(name=Usuario.PESQUISAR_POR_CODIGO,
	query="select u from Usuario u where u.codigo = :CODIGO")
}) 
@Entity
public class Usuario implements Serializable, MeuModelo {

	public static final String LOGAR= "usuario.logar";
	public static final String PESQUISAR_POR_CODIGO = 
			"usuario.pesquisar_por_codigo";
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -7105977673601760546L;

	@Id
	@GeneratedValue
	private Long codigo;
	@Column(nullable = false)
	private String nome;
	@Column(nullable = false)
	private String email;
	@Column(nullable = false)
	private String senha;
	
	
	

	public Usuario() {
		super();

	}

	public Usuario(Long codigo, String nome, String email, String senha) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.email = email;
		this.senha = senha;
	}

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	

	

}
