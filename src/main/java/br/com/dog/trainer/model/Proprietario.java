
package br.com.dog.trainer.model;

import javax.inject.Inject;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import br.com.dog.trainer.sessao.UsuarioLogado;


@Entity
public class Proprietario implements UtilizadorDoSitema  {

	@Inject
	UsuarioLogado usuarioLogado;
	
	@Id @GeneratedValue
	private Long id;
	
	@OneToOne
	private Usuario usuario;
	private String nome;


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	
}
