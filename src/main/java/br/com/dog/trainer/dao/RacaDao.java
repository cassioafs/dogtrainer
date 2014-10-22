package br.com.dog.trainer.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.dog.trainer.model.Raca;

public class RacaDao {

	private final EntityManager entityManager;
	
	public RacaDao() {
		this(null);
	}

	@Inject
	public RacaDao(EntityManager entityManager){
		this.entityManager = entityManager;
		
	}
	public Raca findById(Long id) {
		return entityManager.find(Raca.class, id);
	}
	
	public void insert(Raca raca) {
		entityManager.persist(raca);
	}
	
	public void update(Raca raca) {
		entityManager.merge(raca);
	}	

	public List<Raca> findAll() {
		return entityManager.createQuery("from Raca", Raca.class).getResultList();
	}
}
