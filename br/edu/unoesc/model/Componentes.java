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
	
	@NamedQuery(name=Componentes.LISTAR, query="select c from Componentes c")
	
})


@Entity
public class Componentes implements Serializable, MeuModelo {

	
	public static final String LISTAR = "componentes.listar";
	/**
	 * 
	 */
	private static final long serialVersionUID = -6407632660091784886L;

	@Id
	@GeneratedValue
	private Long codigo;
	@Column(nullable = false)
	private String nome;
	@Column(nullable = false)
	private String local;
	
	
	///@ManyToOne(targetEntity=Usuario.class)
	//@JoinColumn(name="codusuario", nullable=false)
	//private Usuario usuario = new Usuario();
	
	
	
	public Componentes() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Componentes(Long codigo, String nome, String local) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.local = local;
	}
	
	
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public Long getCodigo() {
		return codigo;
	}


	//public Usuario getUsuario() {
	//	return usuario;
	//}


	//public void setUsuario(Usuario usuario) {
	//	this.usuario = usuario;
	//}


	

	
	
	
	

	
	
}
