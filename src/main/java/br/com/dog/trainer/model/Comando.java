package br.com.dog.trainer.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Comando {
	@Id @GeneratedValue
	private Long id;
	
	private String nome;
	private String descricao;

	@OneToOne
	private Adestrador adestrador;
	
	
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
	

	public Adestrador getAdestrador() {
		return adestrador;
	}

	public void setAdestrador(Adestrador adestrador) {
		this.adestrador = adestrador;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
}
