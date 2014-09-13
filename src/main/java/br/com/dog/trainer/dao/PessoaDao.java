package br.com.dog.trainer.dao;

import java.io.Serializable;
import java.util.List;

import javax.enterprise.context.SessionScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.dog.trainer.model.Pessoa;


@SessionScoped
public class PessoaDao implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
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


	
	public Pessoa autenticar ( String email, String senha ){
		try {
			Query query = entityManager.createQuery("from Pessoa where email = ? and senha = ?");
			query.setParameter(1, email);
			query.setParameter(2, senha);
			return (Pessoa) query.getSingleResult();
			
		} catch (NoResultException e) {
			return null;
		}
	}
}
