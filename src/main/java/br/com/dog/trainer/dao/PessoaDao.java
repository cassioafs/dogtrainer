package br.com.dog.trainer.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.dog.trainer.model.Pessoa;


@RequestScoped
public class PessoaDao {

	private final EntityManager entityManager;
	

	public PessoaDao() {
		this(null);
	}
	
	@Inject
	public PessoaDao(EntityManager entityManager){
		this.entityManager = entityManager;
		
	}
	public Pessoa findById(Long id) {
		return entityManager.find(Pessoa.class, id);
	}

	public void insert(Pessoa pessoa) {
		
		entityManager.persist(pessoa);
	}
	
	public void update(Pessoa pessoa) {
		
		entityManager.merge(pessoa);
	}	

	public List<Pessoa> findAll() {
		return entityManager.createQuery("from Pessoa", Pessoa.class).getResultList();
	}

}
