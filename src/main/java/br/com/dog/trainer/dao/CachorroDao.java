package br.com.dog.trainer.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.dog.trainer.model.Cachorro;

public class CachorroDao {

	private final EntityManager entityManager;
	
	public CachorroDao() {
		this(null);
	}

	@Inject
	public CachorroDao(EntityManager entityManager){
		this.entityManager = entityManager;
		
	}
	public Cachorro buscarPorId(Long id) {
		return entityManager.find(Cachorro.class, id);
	}
	
	public void inserir(Cachorro cachorro) {
		entityManager.persist(cachorro);
	}
	
	public void atualizar(Cachorro cachorro) {
		entityManager.merge(cachorro);
	}
	
	public void excluir(Cachorro cachorro) {
		entityManager.remove(entityManager.merge(cachorro));
	}	

	@SuppressWarnings("unchecked")
	public List<Cachorro> buscarTodosDoAdestrador(Long idAdestrador) {
	 	Query query = entityManager.createQuery("from Cachorro where adestrador_id = ?", Cachorro.class);
		query.setParameter(1, idAdestrador);
		return query.getResultList();
	}
}
