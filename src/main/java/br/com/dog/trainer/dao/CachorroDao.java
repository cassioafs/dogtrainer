package br.com.dog.trainer.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

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
	public Cachorro findById(Long id) {
		return entityManager.find(Cachorro.class, id);
	}
	
	public void insert(Cachorro cachorro) {
		entityManager.persist(cachorro);
	}
	
	public void update(Cachorro cachorro) {
		entityManager.merge(cachorro);
	}	

	public List<Cachorro> findAll() {
		return entityManager.createQuery("from Cachorro", Cachorro.class).getResultList();
	}
}
