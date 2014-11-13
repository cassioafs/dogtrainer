package br.com.dog.trainer.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.dog.trainer.model.Comando;

public class ComandoDao {

	private final EntityManager entityManager;
	
	public ComandoDao() {
		this(null);
	}

	@Inject
	public ComandoDao(EntityManager entityManager){
		this.entityManager = entityManager;
		
	}
	public Comando findById(Long id) {
		return entityManager.find(Comando.class, id);
	}
	
	public void insert(Comando comando) {
		entityManager.persist(comando);
	}
	
	public void update(Comando comando) {
		entityManager.merge(comando);
	}
	
	public void delete(Comando comando) {
		entityManager.detach(comando);
	}	

	@SuppressWarnings("unchecked")
	public List<Comando> buscarTodosDoAdestrador(Long idAdestrador) {
	 	Query query = entityManager.createQuery("from Comando where adestrador_id = ?", Comando.class);
		query.setParameter(1, idAdestrador);
		return query.getResultList();
	}
}
