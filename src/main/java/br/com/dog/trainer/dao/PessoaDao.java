package br.com.dog.trainer.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.dog.trainer.model.Pessoa;

public class PessoaDao {

	private final EntityManager entityManager;
	

	public PessoaDao() {
		this(null);
	}
	
	@Inject
	public PessoaDao(EntityManager entityManager){
		this.entityManager = entityManager;
		
	}
	public Pessoa buscarPorId(Long id) {
		return entityManager.find(Pessoa.class, id);
	}

	public void inserir(Pessoa pessoa) {
		
		entityManager.persist(pessoa);
	}	

	public List<Pessoa> buscarTodos() {
		return entityManager.createQuery("from Pessoa", Pessoa.class).getResultList();
	}

}
